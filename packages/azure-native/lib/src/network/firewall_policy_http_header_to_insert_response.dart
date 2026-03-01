// ignore_for_file: unused_element, unnecessary_cast


/// name and value of HTTP/S header to insert
class FirewallPolicyHttpHeaderToInsertResponse {
  /// Contains the name of the header
  final String? headerName;
  /// Contains the value of the header
  final String? headerValue;

  /// Creates a new [FirewallPolicyHttpHeaderToInsertResponse].
  /// [headerName] Contains the name of the header
  /// [headerValue] Contains the value of the header
  FirewallPolicyHttpHeaderToInsertResponse({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory FirewallPolicyHttpHeaderToInsertResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyHttpHeaderToInsertResponse(
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      headerValue: map['headerValue'] == null ? null : map['headerValue'] as String,
    );
  }
}

