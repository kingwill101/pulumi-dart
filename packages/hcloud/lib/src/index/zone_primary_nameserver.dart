// ignore_for_file: unused_element, unnecessary_cast


class ZonePrimaryNameserver {
  /// Public IPv4 or IPv6 address of the primary nameserver.
  final String address;
  /// Port of the primary nameserver.
  final int? port;
  /// Transaction signature (TSIG) algorithm used to generate the TSIG key.
  final String? tsigAlgorithm;
  /// Transaction signature (TSIG) key
  final String? tsigKey;

  /// Creates a new [ZonePrimaryNameserver].
  /// [address] Public IPv4 or IPv6 address of the primary nameserver.
  /// [port] Port of the primary nameserver.
  /// [tsigAlgorithm] Transaction signature (TSIG) algorithm used to generate the TSIG key.
  /// [tsigKey] Transaction signature (TSIG) key
  ZonePrimaryNameserver({
    required this.address,
    this.port,
    this.tsigAlgorithm,
    this.tsigKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': ?port,
      'tsigAlgorithm': ?tsigAlgorithm,
      'tsigKey': ?tsigKey,
    };
  }

  factory ZonePrimaryNameserver.fromMap(Map<String, dynamic> map) {
    return ZonePrimaryNameserver(
      address: map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      tsigAlgorithm: map['tsigAlgorithm'] == null ? null : map['tsigAlgorithm'] as String,
      tsigKey: map['tsigKey'] == null ? null : map['tsigKey'] as String,
    );
  }
}

