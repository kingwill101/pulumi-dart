// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_distribution_configuration_distribution_ami_distribution_configuration_launch_permission/get_distribution_configuration_distribution_ami_distribution_configuration_launch_permission.dart';

class GetDistributionConfigurationDistributionAmiDistributionConfiguration {
  /// Key-value map of tags to apply to distributed AMI.
  final Map<String, String> amiTags;

  /// Description of the container distribution configuration.
  final String description;

  /// ARN of Key Management Service (KMS) Key to encrypt AMI.
  final String kmsKeyId;

  /// Nested list of EC2 launch permissions.
  final List<
          GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission>
      launchPermissions;

  /// Name of the distribution configuration.
  final String name;

  /// Set of target AWS Account identifiers.
  final List<String> targetAccountIds;

  GetDistributionConfigurationDistributionAmiDistributionConfiguration({
    required this.amiTags,
    required this.description,
    required this.kmsKeyId,
    required this.launchPermissions,
    required this.name,
    required this.targetAccountIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amiTags'] = amiTags;
    map['description'] = description;
    map['kmsKeyId'] = kmsKeyId;
    map['launchPermissions'] = pulumi.Input.encodeList<
        GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission,
        Map<String, dynamic>>(launchPermissions, (value) => value.toMap());
    map['name'] = name;
    map['targetAccountIds'] = targetAccountIds;
    return map;
  }

  factory GetDistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationDistributionAmiDistributionConfiguration(
      amiTags: (map['amiTags'] as Map).cast<String, String>(),
      description: map['description'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      launchPermissions: pulumi.Input.decodeList<
              GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission>(
          map['launchPermissions'],
          (value) =>
              GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission
                  .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      targetAccountIds: (map['targetAccountIds'] as List).cast<String>(),
    );
  }
}
