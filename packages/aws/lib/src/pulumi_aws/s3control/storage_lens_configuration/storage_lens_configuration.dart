import 'package:pulumi/pulumi.dart' as pulumi;
import '../storage_lens_configuration_storage_lens_configuration/storage_lens_configuration_storage_lens_configuration.dart';
import 'storage_lens_configuration_args.dart';

/// Provides a resource to manage an S3 Storage Lens configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Storage Lens configurations using the `account_id` and `config_id`, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/storageLensConfiguration:StorageLensConfiguration example 123456789012:example-1
/// ```
class StorageLensConfiguration extends pulumi.CustomResource {
  /// The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;

  /// Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
  late final pulumi.Output<String> arn;

  /// The ID of the S3 Storage Lens configuration.
  late final pulumi.Output<String> configId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  late final pulumi.Output<StorageLensConfigurationStorageLensConfiguration>
      storageLensConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  StorageLensConfiguration(
    String name, {
    StorageLensConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/storageLensConfiguration:StorageLensConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.configId = registerOutput<String>('configId');
    this.region = registerOutput<String>('region');
    this.storageLensConfiguration =
        registerOutput<StorageLensConfigurationStorageLensConfiguration>(
            'storageLensConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
