// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_configuration_distribution_ami_distribution_configuration_launch_permission.dart';

class DistributionConfigurationDistributionAmiDistributionConfiguration {
  /// Key-value map of tags to apply to the distributed AMI.
  final Map<String, String>? amiTags;

  /// Description to apply to the distributed AMI.
  final String? description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key to encrypt the distributed AMI.
  final String? kmsKeyId;

  /// Configuration block of EC2 launch permissions to apply to the distributed AMI. Detailed below.
  final DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission?
      launchPermission;

  /// Name to apply to the distributed AMI.
  final String? name;

  /// Set of AWS Account identifiers to distribute the AMI.
  final List<String>? targetAccountIds;

  /// Creates a new [DistributionConfigurationDistributionAmiDistributionConfiguration].
  /// [amiTags] Key-value map of tags to apply to the distributed AMI.
  /// [description] Description to apply to the distributed AMI.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key to encrypt the distributed AMI.
  /// [launchPermission] Configuration block of EC2 launch permissions to apply to the distributed AMI. Detailed below.
  /// [name] Name to apply to the distributed AMI.
  /// [targetAccountIds] Set of AWS Account identifiers to distribute the AMI.
  DistributionConfigurationDistributionAmiDistributionConfiguration({
    this.amiTags,
    this.description,
    this.kmsKeyId,
    this.launchPermission,
    this.name,
    this.targetAccountIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amiTagsValue = amiTags;
    if (amiTagsValue != null) {
      map['amiTags'] = amiTagsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final launchPermissionValue = launchPermission;
    if (launchPermissionValue != null) {
      map['launchPermission'] = launchPermissionValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final targetAccountIdsValue = targetAccountIds;
    if (targetAccountIdsValue != null) {
      map['targetAccountIds'] = targetAccountIdsValue;
    }
    return map;
  }

  factory DistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DistributionConfigurationDistributionAmiDistributionConfiguration(
      amiTags: map['amiTags'] == null
          ? null
          : (map['amiTags'] as Map).cast<String, String>(),
      description:
          map['description'] == null ? null : map['description'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      launchPermission: map['launchPermission'] == null
          ? null
          : DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission
              .fromMap(
                  (map['launchPermission'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      targetAccountIds: map['targetAccountIds'] == null
          ? null
          : (map['targetAccountIds'] as List).cast<String>(),
    );
  }
}
