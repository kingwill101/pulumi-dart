// ignore_for_file: unused_element, unnecessary_cast

/// The structure describing the DNS Resource Record that needs to be added to DNS configuration for the authorization to be usable by certificate.
class DnsResourceRecordResponse {
  /// Data of the DNS Resource Record.
  final String data;

  /// Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com`
  final String name;

  /// Type of the DNS Resource Record. Currently always set to "CNAME".
  final String type;

  /// Creates a new [DnsResourceRecordResponse].
  /// [data] Data of the DNS Resource Record.
  /// [name] Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com`
  /// [type] Type of the DNS Resource Record. Currently always set to "CNAME".
  DnsResourceRecordResponse({
    required this.data,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory DnsResourceRecordResponse.fromMap(Map<String, dynamic> map) {
    return DnsResourceRecordResponse(
      data: map['data'] as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
