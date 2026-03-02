// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
class CloudProviderProfileResponseInfraNetworkProfile {
  /// Array of references to azure resource corresponding to the new HybridAKSNetwork object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworkName}
  final pulumi.Input<List<String>>? vnetSubnetIds;

  /// Creates a new [CloudProviderProfileResponseInfraNetworkProfile].
  /// [vnetSubnetIds] Array of references to azure resource corresponding to the new HybridAKSNetwork object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworkName}
  CloudProviderProfileResponseInfraNetworkProfile({
    this.vnetSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vnetSubnetIds': ?vnetSubnetIds,
    };
  }

  factory CloudProviderProfileResponseInfraNetworkProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileResponseInfraNetworkProfile(
      vnetSubnetIds: map['vnetSubnetIds'] == null ? null : ((map['vnetSubnetIds']! as List).cast<String>()).input(),
    );
  }
}

