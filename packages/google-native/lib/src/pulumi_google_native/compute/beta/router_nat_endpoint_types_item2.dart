enum RouterNatEndpointTypesItem2 {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItem2(this.value);
  final String value;

  static RouterNatEndpointTypesItem2 fromValue(String value) {
    for (final item in RouterNatEndpointTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatEndpointTypesItem2 value: $value');
  }
}
