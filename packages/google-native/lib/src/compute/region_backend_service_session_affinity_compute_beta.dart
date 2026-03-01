/// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
enum RegionBackendServiceSessionAffinityComputeBeta {
  clientIp("CLIENT_IP"),
  clientIpNoDestination("CLIENT_IP_NO_DESTINATION"),
  clientIpPortProto("CLIENT_IP_PORT_PROTO"),
  clientIpProto("CLIENT_IP_PROTO"),
  generatedCookie("GENERATED_COOKIE"),
  headerField("HEADER_FIELD"),
  httpCookie("HTTP_COOKIE"),
  none("NONE");

  const RegionBackendServiceSessionAffinityComputeBeta(this.value);
  final String value;

  static RegionBackendServiceSessionAffinityComputeBeta fromValue(
    String value,
  ) {
    for (final item in RegionBackendServiceSessionAffinityComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionBackendServiceSessionAffinityComputeBeta value: $value',
    );
  }
}
