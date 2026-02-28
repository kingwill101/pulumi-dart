enum RouterNatEndpointTypesItemComputeBeta {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItemComputeBeta(this.value);
  final String value;

  static RouterNatEndpointTypesItemComputeBeta fromValue(String value) {
    for (final item in RouterNatEndpointTypesItemComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RouterNatEndpointTypesItemComputeBeta value: $value');
  }
}
