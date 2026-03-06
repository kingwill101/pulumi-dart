// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
class CloudProviderProfileInfraStorageProfile {
  /// Reference to azure resource corresponding to the new HybridAKSStorage object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/storageSpaces/{storageSpaceName}
  final pulumi.Input<List<String>>? storageSpaceIds;

  /// Creates a new [CloudProviderProfileInfraStorageProfile].
  /// [storageSpaceIds] Reference to azure resource corresponding to the new HybridAKSStorage object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/storageSpaces/{storageSpaceName}
  const CloudProviderProfileInfraStorageProfile({
    this.storageSpaceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSpaceIds': ?storageSpaceIds,
    };
  }

  factory CloudProviderProfileInfraStorageProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileInfraStorageProfile(
      storageSpaceIds: (() { final guardedValue = map['storageSpaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

