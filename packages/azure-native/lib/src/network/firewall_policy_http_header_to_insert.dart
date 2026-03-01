// ignore_for_file: unused_element, unnecessary_cast


/// name and value of HTTP/S header to insert
class FirewallPolicyHttpHeaderToInsert {
  /// Contains the name of the header
  final String? headerName;
  /// Contains the value of the header
  final String? headerValue;

  /// Creates a new [FirewallPolicyHttpHeaderToInsert].
  /// [headerName] Contains the name of the header
  /// [headerValue] Contains the value of the header
  FirewallPolicyHttpHeaderToInsert({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory FirewallPolicyHttpHeaderToInsert.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyHttpHeaderToInsert(
      headerName: map['headerName'] == null ? null : map['headerName'] as String,
      headerValue: map['headerValue'] == null ? null : map['headerValue'] as String,
    );
  }
}

