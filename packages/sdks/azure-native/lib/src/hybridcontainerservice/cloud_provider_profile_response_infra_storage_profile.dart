// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
class CloudProviderProfileResponseInfraStorageProfile {
  /// Reference to azure resource corresponding to the new HybridAKSStorage object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/storageSpaces/{storageSpaceName}
  final pulumi.Input<List<String>>? storageSpaceIds;

  /// Creates a new [CloudProviderProfileResponseInfraStorageProfile].
  /// [storageSpaceIds] Reference to azure resource corresponding to the new HybridAKSStorage object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/storageSpaces/{storageSpaceName}
  CloudProviderProfileResponseInfraStorageProfile({
    this.storageSpaceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSpaceIds': ?storageSpaceIds,
    };
  }

  factory CloudProviderProfileResponseInfraStorageProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileResponseInfraStorageProfile(
      storageSpaceIds: map['storageSpaceIds'] == null ? null : ((map['storageSpaceIds'] as List).cast<String>()).input(),
    );
  }
}

