// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration.dart';

/// Input properties used for looking up and filtering StorageLensConfiguration resources.
class StorageLensConfigurationState {
  /// The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
  final pulumi.Input<String>? arn;
  /// The ID of the S3 Storage Lens configuration.
  final pulumi.Input<String>? configId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfiguration>? storageLensConfiguration;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [StorageLensConfigurationState].
  /// [accountId] The AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  /// [arn] Amazon Resource Name (ARN) of the S3 Storage Lens configuration.
  /// [configId] The ID of the S3 Storage Lens configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLensConfiguration] The S3 Storage Lens configuration. See Storage Lens Configuration below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  StorageLensConfigurationState({
    this.accountId,
    this.arn,
    this.configId,
    this.region,
    this.storageLensConfiguration,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'arn': ?arn,
      'configId': ?configId,
      'region': ?region,
      'storageLensConfiguration': ?pulumi.Input.mapOptionalInputValue<StorageLensConfigurationStorageLensConfiguration, Map<String, dynamic>>(storageLensConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory StorageLensConfigurationState.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      configId: map['configId'] == null ? null : (map['configId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      storageLensConfiguration: map['storageLensConfiguration'] == null ? null : (StorageLensConfigurationStorageLensConfiguration.fromMap((map['storageLensConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

