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
    this.accountId,
    required this.configId,
    this.region,
    required this.storageLensConfiguration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configId': configId,
      'region': ?region,
      'storageLensConfiguration':
          pulumi.Input.mapInputValue<
            StorageLensConfigurationStorageLensConfiguration,
            Map<String, dynamic>
          >(storageLensConfiguration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory StorageLensConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configId: pulumi.Input.fromValue(map['configId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageLensConfiguration: pulumi.Input.fromValue(
        StorageLensConfigurationStorageLensConfiguration.fromMap(
          (map['storageLensConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
