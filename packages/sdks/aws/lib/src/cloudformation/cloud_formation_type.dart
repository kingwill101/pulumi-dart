import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_formation_type_args.dart';
import 'cloud_formation_type_logging_config.dart';
import 'cloud_formation_type_state.dart';

/// Manages a version of a CloudFormation Type.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.cloudformation.CloudFormationType` using the type version Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/cloudFormationType:CloudFormationType example arn:aws:cloudformation:us-east-1:123456789012:type/resource/ExampleCompany-ExampleService-ExampleType/1
/// ```
class CloudFormationType extends pulumi.CustomResource {
  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also `type_arn`.
  late final pulumi.Output<String> arn;
  /// Identifier of the CloudFormation Type default version.
  late final pulumi.Output<String> defaultVersionId;
  /// Deprecation status of the version.
  late final pulumi.Output<String> deprecatedStatus;
  /// Description of the version.
  late final pulumi.Output<String> description;
  /// URL of the documentation for the CloudFormation Type.
  late final pulumi.Output<String> documentationUrl;
  /// Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  late final pulumi.Output<String?> executionRoleArn;
  /// Whether the CloudFormation Type version is the default version.
  late final pulumi.Output<bool> isDefaultVersion;
  /// Configuration block containing logging configuration.
  late final pulumi.Output<CloudFormationTypeLoggingConfig?> loggingConfig;
  /// Provisioning behavior of the CloudFormation Type.
  late final pulumi.Output<String> provisioningType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// JSON document of the CloudFormation Type schema.
  late final pulumi.Output<String> schema;
  /// URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  late final pulumi.Output<String> schemaHandlerPackage;
  /// URL of the source code for the CloudFormation Type.
  late final pulumi.Output<String> sourceUrl;
  /// CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  late final pulumi.Output<String> type;
  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also `arn`.
  late final pulumi.Output<String> typeArn;
  /// CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  late final pulumi.Output<String> typeName;
  /// (Optional) Identifier of the CloudFormation Type version.
  late final pulumi.Output<String> versionId;
  /// Scope of the CloudFormation Type.
  late final pulumi.Output<String> visibility;

  /// Creates a new [CloudFormationType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudFormationType]. {@macro pulumi_cloudformation_cloud_formation_type_cloud_formation_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudFormationType(
    String name, {
    CloudFormationTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/cloudFormationType:CloudFormationType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<String>('defaultVersionId');
    this.deprecatedStatus = registerOutput<String>('deprecatedStatus');
    this.description = registerOutput<String>('description');
    this.documentationUrl = registerOutput<String>('documentationUrl');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.isDefaultVersion = registerOutput<bool>('isDefaultVersion');
    this.loggingConfig = registerOutput<CloudFormationTypeLoggingConfig?>('loggingConfig');
    this.provisioningType = registerOutput<String>('provisioningType');
    this.region = registerOutput<String>('region');
    this.schema = registerOutput<String>('schema');
    this.schemaHandlerPackage = registerOutput<String>('schemaHandlerPackage');
    this.sourceUrl = registerOutput<String>('sourceUrl');
    this.type = registerOutput<String>('type');
    this.typeArn = registerOutput<String>('typeArn');
    this.typeName = registerOutput<String>('typeName');
    this.versionId = registerOutput<String>('versionId');
    this.visibility = registerOutput<String>('visibility');
  }

  /// Gets an existing [CloudFormationType] resource's state with the given [name] and [id].
  static CloudFormationType get(
    String name,
    pulumi.Input<String> id, {
    CloudFormationTypeState? state,
  }) {
    return CloudFormationType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CloudFormationType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/cloudFormationType:CloudFormationType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<String>('defaultVersionId');
    this.deprecatedStatus = registerOutput<String>('deprecatedStatus');
    this.description = registerOutput<String>('description');
    this.documentationUrl = registerOutput<String>('documentationUrl');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.isDefaultVersion = registerOutput<bool>('isDefaultVersion');
    this.loggingConfig = registerOutput<CloudFormationTypeLoggingConfig?>('loggingConfig');
    this.provisioningType = registerOutput<String>('provisioningType');
    this.region = registerOutput<String>('region');
    this.schema = registerOutput<String>('schema');
    this.schemaHandlerPackage = registerOutput<String>('schemaHandlerPackage');
    this.sourceUrl = registerOutput<String>('sourceUrl');
    this.type = registerOutput<String>('type');
    this.typeArn = registerOutput<String>('typeArn');
    this.typeName = registerOutput<String>('typeName');
    this.versionId = registerOutput<String>('versionId');
    this.visibility = registerOutput<String>('visibility');
  }
}
