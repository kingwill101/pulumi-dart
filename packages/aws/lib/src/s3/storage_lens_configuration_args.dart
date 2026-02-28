// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration.dart';

/// {@template pulumi_s3_control_storage_lens_configuration_storage_lens_configuration_args_doc}
/// The set of arguments for StorageLensConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_control_storage_lens_configuration_storage_lens_configuration_args_doc}
class StorageLensConfigurationArgs {
  /// The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// The ID of the S3 Storage Lens configuration.
  final pulumi.Input<String> configId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfiguration>
      storageLensConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StorageLensConfigurationArgs].
  /// [accountId] The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  /// [configId] The ID of the S3 Storage Lens configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLensConfiguration] The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  StorageLensConfigurationArgs({
    String? accountId,
    required String configId,
    String? region,
    required StorageLensConfigurationStorageLensConfiguration
        storageLensConfiguration,
    Map<String, String>? tags,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        configId = pulumi.Input.asInput<String>(configId),
        region = pulumi.Input.asOptionalInput<String>(region),
        storageLensConfiguration = pulumi.Input.asInput<
                StorageLensConfigurationStorageLensConfiguration>(
            storageLensConfiguration),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['configId'] = configId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['storageLensConfiguration'] = pulumi.Input.mapInputValue<
            StorageLensConfigurationStorageLensConfiguration,
            Map<String, dynamic>>(
        storageLensConfiguration, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory StorageLensConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      configId: map['configId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      storageLensConfiguration:
          StorageLensConfigurationStorageLensConfiguration.fromMap(
              (map['storageLensConfiguration'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
