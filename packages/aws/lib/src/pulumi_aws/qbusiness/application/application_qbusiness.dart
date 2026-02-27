import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_attachments_configuration/application_attachments_configuration.dart';
import '../application_encryption_configuration/application_encryption_configuration.dart';
import '../application_timeouts/application_timeouts_qbusiness.dart';
import 'application_qbusiness_args.dart';

/// Provides a Q Business Application resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a Q Business Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:qbusiness/application:Application example id-12345678
/// ```
class ApplicationQbusiness extends pulumi.CustomResource {
  /// ARN of the Q Business application.
  late final pulumi.Output<String> arn;

  /// Information about whether file upload functionality is activated or deactivated for your end user. See `attachments_configuration` below.
  late final pulumi.Output<ApplicationAttachmentsConfiguration>
      attachmentsConfiguration;

  /// Description of the Amazon Q application.
  late final pulumi.Output<String?> description;

  /// Name of the Amazon Q application.
  late final pulumi.Output<String> displayName;

  /// Information about encryption configuration. See `encryption_configuration` below.
  late final pulumi.Output<ApplicationEncryptionConfiguration?>
      encryptionConfiguration;

  /// ARN of an IAM role with permissions to access your Amazon CloudWatch logs and metrics.
  late final pulumi.Output<String> iamServiceRoleArn;

  /// ARN of the AWS IAM Identity Center application attached to your Amazon Q Business application.
  late final pulumi.Output<String> identityCenterApplicationArn;

  /// ARN of the IAM Identity Center instance you are either creating for — or connecting to — your Amazon Q Business application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> identityCenterInstanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeoutsQbusiness?> timeouts;

  ApplicationQbusiness(
    String name, {
    ApplicationQbusinessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:qbusiness/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentsConfiguration =
        registerOutput<ApplicationAttachmentsConfiguration>(
            'attachmentsConfiguration');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionConfiguration =
        registerOutput<ApplicationEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.iamServiceRoleArn = registerOutput<String>('iamServiceRoleArn');
    this.identityCenterApplicationArn =
        registerOutput<String>('identityCenterApplicationArn');
    this.identityCenterInstanceArn =
        registerOutput<String>('identityCenterInstanceArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ApplicationTimeoutsQbusiness?>('timeouts');
  }
}
