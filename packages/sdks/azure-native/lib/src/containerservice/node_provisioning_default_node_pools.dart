/// The set of default Karpenter NodePools (CRDs) configured for node provisioning. This field has no effect unless mode is 'Auto'. Warning: Changing this from Auto to None on an existing cluster will cause the default Karpenter NodePools to be deleted, which will drain and delete the nodes associated with those pools. It is strongly recommended to not do this unless there are idle nodes ready to take the pods evicted by that action. If not specified, the default is Auto. For more information see aka.ms/aks/nap#node-pools.
enum NodeProvisioningDefaultNodePools {
  valueNone("None"),
  valueAuto("Auto");

  const NodeProvisioningDefaultNodePools(this.value);
  final String value;

  static NodeProvisioningDefaultNodePools fromValue(String value) {
    for (final item in NodeProvisioningDefaultNodePools.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeProvisioningDefaultNodePools value: $value');
  }
}

