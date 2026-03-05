// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
class CloudProviderProfileInfraNetworkProfile {
  /// Array of references to azure resource corresponding to the new HybridAKSNetwork object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworkName}
  final pulumi.Input<List<String>>? vnetSubnetIds;

  /// Creates a new [CloudProviderProfileInfraNetworkProfile].
  /// [vnetSubnetIds] Array of references to azure resource corresponding to the new HybridAKSNetwork object e.g. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/virtualNetworks/{virtualNetworkName}
  CloudProviderProfileInfraNetworkProfile({
    this.vnetSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vnetSubnetIds': ?vnetSubnetIds,
    };
  }

  factory CloudProviderProfileInfraNetworkProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileInfraNetworkProfile(
      vnetSubnetIds: (() { final guardedValue = map['vnetSubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

