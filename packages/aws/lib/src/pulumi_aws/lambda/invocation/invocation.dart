import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_args.dart';

/// Manages an AWS Lambda Function invocation. Use this resource to invoke a Lambda function with the [RequestResponse](https://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html#API_Invoke_RequestSyntax) invocation type.
///
/// > **Note:** By default this resource _only_ invokes the function when the arguments call for a create or replace. After an initial invocation on _apply_, if the arguments do not change, a subsequent _apply_ does not invoke the function again. To dynamically invoke the function, see the `triggers` example below. To always invoke a function on each _apply_, see the `aws.lambda.Invocation` data source. To invoke the Lambda function when the Pulumi resource is updated and deleted, see the CRUD Lifecycle Management example below.
///
/// > **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking a Lambda function with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// ## Example Usage
///
/// ### Basic Invocation
///
///
///
/// ### Dynamic Invocation with Triggers
///
///
///
/// ### CRUD Lifecycle Management
///
///
///
/// > **Note:** `lifecycle_scope = "CRUD"` will inject a key `tf` in the input event to pass lifecycle information! This allows the Lambda function to handle different lifecycle transitions uniquely. If you need to use a key `tf` in your own input JSON, the default key name can be overridden with the `pulumi_key` argument.
///
/// The lifecycle key gets added with subkeys:
///
/// * `action` - Action Pulumi performs on the resource. Values are `create`, `update`, or `delete`.
/// * `prev_input` - Input JSON payload from the previous invocation. This can be used to handle update and delete events.
///
/// When the resource from the CRUD example above is created, the Lambda will receive the following JSON payload:
///
/// ```json
/// {
/// "resource_name": "database_setup",
/// "database_url": "mydb.cluster-xyz.us-west-2.rds.amazonaws.com:5432",
/// "credentials": {
/// "username": "admin",
/// "password": "secret123"
/// },
/// "tf": {
/// "action": "create",
/// "prev_input": null
/// }
/// }
/// ```
///
/// If the `database_url` changes, the Lambda will be invoked again with:
///
/// ```json
/// {
/// "resource_name": "database_setup",
/// "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
/// "credentials": {
/// "username": "admin",
/// "password": "secret123"
/// },
/// "tf": {
/// "action": "update",
/// "prev_input": {
/// "resource_name": "database_setup",
/// "database_url": "mydb.cluster-xyz.us-west-2.rds.amazonaws.com:5432",
/// "credentials": {
/// "username": "admin",
/// "password": "secret123"
/// }
/// }
/// }
/// }
/// ```
///
/// When the invocation resource is removed, the final invocation will have:
///
/// ```json
/// {
/// "resource_name": "database_setup",
/// "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
/// "credentials": {
/// "username": "admin",
/// "password": "secret123"
/// },
/// "tf": {
/// "action": "delete",
/// "prev_input": {
/// "resource_name": "database_setup",
/// "database_url": "mydb-new.cluster-abc.us-west-2.rds.amazonaws.com:5432",
/// "credentials": {
/// "username": "admin",
/// "password": "secret123"
/// }
/// }
/// }
/// }
/// ```
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Invocation using the `function_name,qualifier,result_hash`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/invocation:Invocation test_lambda my_test_lambda_function,$LATEST,b326b5062b2f0e69046810717534cb09
/// ```
///
/// Because it is not possible to retrieve previous invocations, during the next update Pulumi will update the resource calling again the function.
/// To compute the `result_hash`, it is necessary to hash it with the standard `md5` hash function.
class Invocation extends pulumi.CustomResource {
  /// Name of the Lambda function.
  late final pulumi.Output<String> functionName;

  /// JSON payload to the Lambda function.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> input;

  /// Lifecycle scope of the resource to manage. Valid values are `CREATE_ONLY` and `CRUD`. Defaults to `CREATE_ONLY`. `CREATE_ONLY` will invoke the function only on creation or replacement. `CRUD` will invoke the function on each lifecycle event, and augment the input JSON payload with additional lifecycle information.
  late final pulumi.Output<String?> lifecycleScope;

  /// Qualifier (i.e., version) of the Lambda function. Defaults to `$LATEST`.
  late final pulumi.Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// String result of the Lambda function invocation.
  late final pulumi.Output<String> result;

  /// Tenant Id to serve invocations from specified tenant.
  late final pulumi.Output<String?> tenantId;
  late final pulumi.Output<String?> terraformKey;

  /// Map of arbitrary keys and values that, when changed, will trigger a re-invocation.
  late final pulumi.Output<Map<String, String>?> triggers;

  Invocation(
    String name, {
    InvocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/invocation:Invocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.functionName = registerOutput<String>('functionName');
    this.input = registerOutput<String>('input');
    this.lifecycleScope = registerOutput<String?>('lifecycleScope');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
    this.result = registerOutput<String>('result');
    this.tenantId = registerOutput<String?>('tenantId');
    this.terraformKey = registerOutput<String?>('terraformKey');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
