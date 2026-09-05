// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_lens_configuration_storage_lens_configuration.dart';

/// Input properties used for looking up and filtering StorageLensConfiguration resources.
class StorageLensConfigurationState {
  /// AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String?>? accountId;
  /// ARN of the S3 Storage Lens configuration.
  final pulumi.Input<String?>? arn;
  /// ID of the S3 Storage Lens configuration.
  final pulumi.Input<String?>? configId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// S3 Storage Lens configuration. See `storageLensConfiguration` below for more details.
  final pulumi.Input<StorageLensConfigurationStorageLensConfiguration?>? storageLensConfiguration;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [StorageLensConfigurationState].
  /// [accountId] AWS account ID for the S3 Storage Lens configuration. Defaults to automatically determined account ID of the AWS provider.
  /// [arn] ARN of the S3 Storage Lens configuration.
  /// [configId] ID of the S3 Storage Lens configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLensConfiguration] S3 Storage Lens configuration. See `storageLensConfiguration` below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const StorageLensConfigurationState({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageLensConfiguration: (() { final guardedValue = map['storageLensConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageLensConfigurationStorageLensConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
