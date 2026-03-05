// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterNodeProvisioningProfileResponse {
  /// The set of default Karpenter NodePools (CRDs) configured for node provisioning. This field has no effect unless mode is 'Auto'. Warning: Changing this from Auto to None on an existing cluster will cause the default Karpenter NodePools to be deleted, which will drain and delete the nodes associated with those pools. It is strongly recommended to not do this unless there are idle nodes ready to take the pods evicted by that action. If not specified, the default is Auto. For more information see aka.ms/aks/nap#node-pools.
  final pulumi.Input<String>? defaultNodePools;
  /// The node provisioning mode. If not specified, the default is Manual.
  final pulumi.Input<String>? mode;

  /// Creates a new [ManagedClusterNodeProvisioningProfileResponse].
  /// [defaultNodePools] The set of default Karpenter NodePools (CRDs) configured for node provisioning. This field has no effect unless mode is 'Auto'. Warning: Changing this from Auto to None on an existing cluster will cause the default Karpenter NodePools to be deleted, which will drain and delete the nodes associated with those pools. It is strongly recommended to not do this unless there are idle nodes ready to take the pods evicted by that action. If not specified, the default is Auto. For more information see aka.ms/aks/nap#node-pools.
  /// [mode] The node provisioning mode. If not specified, the default is Manual.
  ManagedClusterNodeProvisioningProfileResponse({
    this.defaultNodePools,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNodePools': ?defaultNodePools,
      'mode': ?mode,
    };
  }

  factory ManagedClusterNodeProvisioningProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeProvisioningProfileResponse(
      defaultNodePools: (() { final guardedValue = map['defaultNodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

