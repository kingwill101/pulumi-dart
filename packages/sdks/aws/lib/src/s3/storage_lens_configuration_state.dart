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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configId,
    pulumi.Output<String>? region,
    pulumi.Output<StorageLensConfigurationStorageLensConfiguration>? storageLensConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configId = pulumi.Input.asOptionalInput<String>(configId),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageLensConfiguration = pulumi.Input.asOptionalInput<StorageLensConfigurationStorageLensConfiguration>(storageLensConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageLensConfiguration: map['storageLensConfiguration'] == null ? null : pulumi.Output.create<StorageLensConfigurationStorageLensConfiguration>(StorageLensConfigurationStorageLensConfiguration.fromMap((map['storageLensConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

