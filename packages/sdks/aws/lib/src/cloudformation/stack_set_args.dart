// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_set_auto_deployment.dart';
import 'stack_set_managed_execution.dart';
import 'stack_set_operation_preferences.dart';

/// {@template pulumi_cloudformation_stack_set_stack_set_args_doc}
/// The set of arguments for StackSet.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_stack_set_stack_set_args_doc}
class StackSetArgs {
  /// Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  final pulumi.Input<String>? administrationRoleArn;
  /// Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the `SERVICE_MANAGED` permission model.
  final pulumi.Input<StackSetAutoDeployment>? autoDeployment;
  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final pulumi.Input<String>? callAs;
  /// A list of capabilities. Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`.
  final pulumi.Input<List<String>>? capabilities;
  /// Description of the StackSet.
  final pulumi.Input<String>? description;
  /// Name of the IAM Role in all target accounts for StackSet operations. Defaults to `AWSCloudFormationStackSetExecutionRole` when using the `SELF_MANAGED` permission model. This should not be defined when using the `SERVICE_MANAGED` permission model.
  final pulumi.Input<String>? executionRoleName;
  /// Configuration block to allow StackSets to perform non-conflicting operations concurrently and queues conflicting operations.
  final pulumi.Input<StackSetManagedExecution>? managedExecution;
  /// Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
  final pulumi.Input<String>? name;
  /// Preferences for how AWS CloudFormation performs a stack set update.
  final pulumi.Input<StackSetOperationPreferences>? operationPreferences;
  /// Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with `lifecycle` configuration block `ignore_changes` argument. All `NoEcho` template parameters must be ignored with the `lifecycle` configuration block `ignore_changes` argument.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  final pulumi.Input<String>? permissionModel;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with `template_url`.
  final pulumi.Input<String>? templateBody;
  /// String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with `template_body`.
  final pulumi.Input<String>? templateUrl;

  /// Creates a new [StackSetArgs].
  /// [administrationRoleArn] Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  /// [autoDeployment] Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the `SERVICE_MANAGED` permission model.
  /// [callAs] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  /// [capabilities] A list of capabilities. Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`.
  /// [description] Description of the StackSet.
  /// [executionRoleName] Name of the IAM Role in all target accounts for StackSet operations. Defaults to `AWSCloudFormationStackSetExecutionRole` when using the `SELF_MANAGED` permission model. This should not be defined when using the `SERVICE_MANAGED` permission model.
  /// [managedExecution] Configuration block to allow StackSets to perform non-conflicting operations concurrently and queues conflicting operations.
  /// [name] Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set update.
  /// [parameters] Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with `lifecycle` configuration block `ignore_changes` argument. All `NoEcho` template parameters must be ignored with the `lifecycle` configuration block `ignore_changes` argument.
  /// [permissionModel] Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateBody] String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with `template_url`.
  /// [templateUrl] String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with `template_body`.
  StackSetArgs({
    pulumi.Output<String>? administrationRoleArn,
    pulumi.Output<StackSetAutoDeployment>? autoDeployment,
    pulumi.Output<String>? callAs,
    pulumi.Output<List<String>>? capabilities,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionRoleName,
    pulumi.Output<StackSetManagedExecution>? managedExecution,
    pulumi.Output<String>? name,
    pulumi.Output<StackSetOperationPreferences>? operationPreferences,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? permissionModel,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateBody,
    pulumi.Output<String>? templateUrl,
  }) :
      administrationRoleArn = pulumi.Input.asOptionalInput<String>(administrationRoleArn),
      autoDeployment = pulumi.Input.asOptionalInput<StackSetAutoDeployment>(autoDeployment),
      callAs = pulumi.Input.asOptionalInput<String>(callAs),
      capabilities = pulumi.Input.asOptionalInput<List<String>>(capabilities),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleName = pulumi.Input.asOptionalInput<String>(executionRoleName),
      managedExecution = pulumi.Input.asOptionalInput<StackSetManagedExecution>(managedExecution),
      name = pulumi.Input.asOptionalInput<String>(name),
      operationPreferences = pulumi.Input.asOptionalInput<StackSetOperationPreferences>(operationPreferences),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      permissionModel = pulumi.Input.asOptionalInput<String>(permissionModel),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleArn': ?administrationRoleArn,
      'autoDeployment': ?pulumi.Input.mapOptionalInputValue<StackSetAutoDeployment, Map<String, dynamic>>(autoDeployment, (value) => value.toMap()),
      'callAs': ?callAs,
      'capabilities': ?capabilities,
      'description': ?description,
      'executionRoleName': ?executionRoleName,
      'managedExecution': ?pulumi.Input.mapOptionalInputValue<StackSetManagedExecution, Map<String, dynamic>>(managedExecution, (value) => value.toMap()),
      'name': ?name,
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<StackSetOperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'parameters': ?parameters,
      'permissionModel': ?permissionModel,
      'region': ?region,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateUrl': ?templateUrl,
    };
  }

  factory StackSetArgs.fromMap(Map<String, dynamic> map) {
    return StackSetArgs(
      administrationRoleArn: map['administrationRoleArn'] == null ? null : pulumi.Output.create<String>(map['administrationRoleArn'] as String),
      autoDeployment: map['autoDeployment'] == null ? null : pulumi.Output.create<StackSetAutoDeployment>(StackSetAutoDeployment.fromMap((map['autoDeployment'] as Map).cast<String, dynamic>())),
      callAs: map['callAs'] == null ? null : pulumi.Output.create<String>(map['callAs'] as String),
      capabilities: map['capabilities'] == null ? null : pulumi.Output.create<List<String>>((map['capabilities'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionRoleName: map['executionRoleName'] == null ? null : pulumi.Output.create<String>(map['executionRoleName'] as String),
      managedExecution: map['managedExecution'] == null ? null : pulumi.Output.create<StackSetManagedExecution>(StackSetManagedExecution.fromMap((map['managedExecution'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operationPreferences: map['operationPreferences'] == null ? null : pulumi.Output.create<StackSetOperationPreferences>(StackSetOperationPreferences.fromMap((map['operationPreferences'] as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      permissionModel: map['permissionModel'] == null ? null : pulumi.Output.create<String>(map['permissionModel'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
    );
  }
}

