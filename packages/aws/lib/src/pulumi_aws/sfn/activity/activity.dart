import 'package:pulumi/pulumi.dart';
import '../activity_encryption_configuration/activity_encryption_configuration.dart';
import 'activity_args.dart';

/// Provides a Step Function Activity resource
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Encryption
///
/// > *NOTE:* See the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the [AWS Step Functions Developer Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) for more information about enabling encryption of data using a customer-managed key for Step Functions State Machines data.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import activities using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/activity:Activity example arn:aws:states:eu-west-1:123456789098:activity:bar
/// ```
class Activity extends CustomResource {
  /// Amazon Resource Name (ARN) of the activity.
  late final Output<String> arn;

  /// Date the activity was created.
  late final Output<String> creationDate;

  /// Defines what encryption configuration is used to encrypt data in the Activity. For more information see the section [Data at rest encyption](https://docs.aws.amazon.com/step-functions/latest/dg/encryption-at-rest.html) in the AWS Step Functions User Guide.
  late final Output<ActivityEncryptionConfiguration> encryptionConfiguration;

  /// The name of the activity to create.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Activity(
    String name, {
    ActivityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sfn/activity:Activity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.creationDate = registerOutput<String>('creationDate');
    this.encryptionConfiguration =
        registerOutput<ActivityEncryptionConfiguration>(
            'encryptionConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
