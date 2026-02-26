/// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
enum TargetPoolSessionAffinity3 {
  clientIp("CLIENT_IP"),
  clientIpNoDestination("CLIENT_IP_NO_DESTINATION"),
  clientIpPortProto("CLIENT_IP_PORT_PROTO"),
  clientIpProto("CLIENT_IP_PROTO"),
  generatedCookie("GENERATED_COOKIE"),
  headerField("HEADER_FIELD"),
  httpCookie("HTTP_COOKIE"),
  none("NONE");

  const TargetPoolSessionAffinity3(this.value);
  final String value;

  static TargetPoolSessionAffinity3 fromValue(String value) {
    for (final item in TargetPoolSessionAffinity3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetPoolSessionAffinity3 value: $value');
  }
}
