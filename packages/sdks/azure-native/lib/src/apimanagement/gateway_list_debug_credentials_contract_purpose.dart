/// Purpose of debug credential.
enum GatewayListDebugCredentialsContractPurpose {
  valueTracing("tracing");

  const GatewayListDebugCredentialsContractPurpose(this.value);
  final String value;

  static GatewayListDebugCredentialsContractPurpose fromValue(String value) {
    for (final item in GatewayListDebugCredentialsContractPurpose.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayListDebugCredentialsContractPurpose value: $value');
  }
}

