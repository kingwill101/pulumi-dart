import 'package:pulumi/pulumi.dart';
import '../cloud_formation_type_logging_config/cloud_formation_type_logging_config.dart';
import 'cloud_formation_type_args.dart';

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
class CloudFormationType extends CustomResource {
  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also `type_arn`.
  late final Output<String> arn;

  /// Identifier of the CloudFormation Type default version.
  late final Output<String> defaultVersionId;

  /// Deprecation status of the version.
  late final Output<String> deprecatedStatus;

  /// Description of the version.
  late final Output<String> description;

  /// URL of the documentation for the CloudFormation Type.
  late final Output<String> documentationUrl;

  /// Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials.
  late final Output<String?> executionRoleArn;

  /// Whether the CloudFormation Type version is the default version.
  late final Output<bool> isDefaultVersion;

  /// Configuration block containing logging configuration.
  late final Output<CloudFormationTypeLoggingConfig?> loggingConfig;

  /// Provisioning behavior of the CloudFormation Type.
  late final Output<String> provisioningType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// JSON document of the CloudFormation Type schema.
  late final Output<String> schema;

  /// URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with `s3://` or `https://`. For example, `s3://example-bucket/example-object`.
  late final Output<String> schemaHandlerPackage;

  /// URL of the source code for the CloudFormation Type.
  late final Output<String> sourceUrl;

  /// CloudFormation Registry Type. For example, `RESOURCE` or `MODULE`.
  late final Output<String> type;

  /// (Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also `arn`.
  late final Output<String> typeArn;

  /// CloudFormation Type name. For example, `ExampleCompany::ExampleService::ExampleResource`.
  late final Output<String> typeName;

  /// (Optional) Identifier of the CloudFormation Type version.
  late final Output<String> versionId;

  /// Scope of the CloudFormation Type.
  late final Output<String> visibility;

  CloudFormationType(
    String name, {
    CloudFormationTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/cloudFormationType:CloudFormationType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<String>('defaultVersionId');
    this.deprecatedStatus = registerOutput<String>('deprecatedStatus');
    this.description = registerOutput<String>('description');
    this.documentationUrl = registerOutput<String>('documentationUrl');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.isDefaultVersion = registerOutput<bool>('isDefaultVersion');
    this.loggingConfig =
        registerOutput<CloudFormationTypeLoggingConfig?>('loggingConfig');
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
