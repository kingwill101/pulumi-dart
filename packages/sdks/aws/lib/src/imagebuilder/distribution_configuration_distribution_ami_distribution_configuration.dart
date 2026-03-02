// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_configuration_distribution_ami_distribution_configuration_launch_permission.dart';

class DistributionConfigurationDistributionAmiDistributionConfiguration {
  /// Key-value map of tags to apply to the distributed AMI.
  final pulumi.Input<Map<String, String>>? amiTags;
  /// Description to apply to the distributed AMI.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key to encrypt the distributed AMI.
  final pulumi.Input<String>? kmsKeyId;
  /// Configuration block of EC2 launch permissions to apply to the distributed AMI. Detailed below.
  final pulumi.Input<DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission>? launchPermission;
  /// Name to apply to the distributed AMI.
  final pulumi.Input<String>? name;
  /// Set of AWS Account identifiers to distribute the AMI.
  final pulumi.Input<List<String>>? targetAccountIds;

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
    return <String, dynamic>{
      'amiTags': ?amiTags,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'launchPermission': ?pulumi.Input.mapOptionalInputValue<DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission, Map<String, dynamic>>(launchPermission, (value) => value.toMap()),
      'name': ?name,
      'targetAccountIds': ?targetAccountIds,
    };
  }

  factory DistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(Map<String, dynamic> map) {
    return DistributionConfigurationDistributionAmiDistributionConfiguration(
      amiTags: map['amiTags'] == null ? null : (((map['amiTags'] as Map).cast<String, String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      launchPermission: map['launchPermission'] == null ? null : ((DistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap((map['launchPermission']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      targetAccountIds: map['targetAccountIds'] == null ? null : (((map['targetAccountIds'] as List).cast<String>()).input()).input(),
    );
  }
}

