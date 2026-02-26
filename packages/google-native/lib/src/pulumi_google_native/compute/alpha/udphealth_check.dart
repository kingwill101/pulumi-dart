// ignore_for_file: unused_element, unnecessary_cast

class UDPHealthCheck {
  /// The UDP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  final int? port;

  /// Not supported.
  final String? portName;

  /// Raw data of request to send in payload of UDP packet. It is an error if this is empty. The request data can only be ASCII.
  final String? request;

  /// The bytes to match against the beginning of the response data. It is an error if this is empty. The response data can only be ASCII.
  final String? response;

  UDPHealthCheck({
    this.port,
    this.portName,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final portNameValue = portName;
    if (portNameValue != null) {
      map['portName'] = portNameValue;
    }
    final requestValue = request;
    if (requestValue != null) {
      map['request'] = requestValue;
    }
    final responseValue = response;
    if (responseValue != null) {
      map['response'] = responseValue;
    }
    return map;
  }

  factory UDPHealthCheck.fromMap(Map<String, dynamic> map) {
    return UDPHealthCheck(
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      request: map['request'] == null ? null : map['request'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}
