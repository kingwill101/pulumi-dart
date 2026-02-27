// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../storage_lens_configuration_storage_lens_configuration/storage_lens_configuration_storage_lens_configuration.dart';

/// The set of arguments for StorageLensConfiguration.
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

  StorageLensConfigurationArgs({
    this.accountId,
    required this.configId,
    this.region,
    required this.storageLensConfiguration,
    this.tags,
  });

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
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      configId: pulumi.Input.asInput<String>(map['configId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageLensConfiguration: pulumi.Input.asInput<
              StorageLensConfigurationStorageLensConfiguration>(
          map['storageLensConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
