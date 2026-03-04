// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configuration_distribution_ami_distribution_configuration_launch_permission.dart';

class GetDistributionConfigurationDistributionAmiDistributionConfiguration {
  /// Key-value map of tags to apply to distributed AMI.
  final pulumi.Input<Map<String, String>> amiTags;

  /// Description of the container distribution configuration.
  final pulumi.Input<String> description;

  /// ARN of Key Management Service (KMS) Key to encrypt AMI.
  final pulumi.Input<String> kmsKeyId;

  /// Nested list of EC2 launch permissions.
  final pulumi.Input<
    List<
      GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission
    >
  >
  launchPermissions;

  /// Name of the distribution configuration.
  final pulumi.Input<String> name;

  /// Set of target AWS Account identifiers.
  final pulumi.Input<List<String>> targetAccountIds;

  /// Creates a new [GetDistributionConfigurationDistributionAmiDistributionConfiguration].
  /// [amiTags] Key-value map of tags to apply to distributed AMI.
  /// [description] Description of the container distribution configuration.
  /// [kmsKeyId] ARN of Key Management Service (KMS) Key to encrypt AMI.
  /// [launchPermissions] Nested list of EC2 launch permissions.
  /// [name] Name of the distribution configuration.
  /// [targetAccountIds] Set of target AWS Account identifiers.
  GetDistributionConfigurationDistributionAmiDistributionConfiguration({
    required this.amiTags,
    required this.description,
    required this.kmsKeyId,
    required this.launchPermissions,
    required this.name,
    required this.targetAccountIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amiTags': amiTags,
      'description': description,
      'kmsKeyId': kmsKeyId,
      'launchPermissions':
          pulumi.Input.mapInputValue<
            List<
              GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission
            >,
            List<Map<String, dynamic>>
          >(
            launchPermissions,
            (value) =>
                pulumi.Input.encodeList<
                  GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'targetAccountIds': targetAccountIds,
    };
  }

  factory GetDistributionConfigurationDistributionAmiDistributionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDistributionConfigurationDistributionAmiDistributionConfiguration(
      amiTags: pulumi.Input.fromValue(
        (map['amiTags'] as Map).cast<String, String>(),
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      launchPermissions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission
        >(
          map['launchPermissions']!,
          (value) =>
              GetDistributionConfigurationDistributionAmiDistributionConfigurationLaunchPermission.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetAccountIds: pulumi.Input.fromValue(
        (map['targetAccountIds'] as List).cast<String>(),
      ),
    );
  }
}
