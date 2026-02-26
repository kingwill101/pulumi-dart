/// Type of session affinity to use. The default is NONE. Only NONE and HEADER_FIELD are supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true. For more details, see: [Session Affinity](https://cloud.google.com/load-balancing/docs/backend-service#session_affinity).
enum BackendServiceSessionAffinity3 {
  clientIp("CLIENT_IP"),
  clientIpNoDestination("CLIENT_IP_NO_DESTINATION"),
  clientIpPortProto("CLIENT_IP_PORT_PROTO"),
  clientIpProto("CLIENT_IP_PROTO"),
  generatedCookie("GENERATED_COOKIE"),
  headerField("HEADER_FIELD"),
  httpCookie("HTTP_COOKIE"),
  none("NONE");

  const BackendServiceSessionAffinity3(this.value);
  final String value;

  static BackendServiceSessionAffinity3 fromValue(String value) {
    for (final item in BackendServiceSessionAffinity3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceSessionAffinity3 value: $value');
  }
}
