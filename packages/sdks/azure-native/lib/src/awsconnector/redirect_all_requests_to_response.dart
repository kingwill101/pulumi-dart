// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RedirectAllRequestsTo
class RedirectAllRequestsToResponse {
  /// Name of the host where requests are redirected.
  final String? hostName;
  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  final String? protocol;

  /// Creates a new [RedirectAllRequestsToResponse].
  /// [hostName] Name of the host where requests are redirected.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  RedirectAllRequestsToResponse({
    this.hostName,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'protocol': ?protocol,
    };
  }

  factory RedirectAllRequestsToResponse.fromMap(Map<String, dynamic> map) {
    return RedirectAllRequestsToResponse(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

