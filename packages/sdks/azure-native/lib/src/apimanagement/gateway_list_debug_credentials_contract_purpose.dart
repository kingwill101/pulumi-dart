/// Purpose of debug credential.
enum GatewayListDebugCredentialsContractPurpose {
  valueTracing("tracing");

  const GatewayListDebugCredentialsContractPurpose(this.wireValue);
  final String wireValue;

  static GatewayListDebugCredentialsContractPurpose fromValue(String value) {
    for (final item in GatewayListDebugCredentialsContractPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayListDebugCredentialsContractPurpose value: $value');
  }
}
