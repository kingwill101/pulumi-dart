// ignore_for_file: unused_element, unnecessary_cast


class ApplicationCustomHostAliasV2 {
  /// The domain name or hostname.
  final String? hostName;
  /// The IP address.
  final String? ip;

  /// Creates a new [ApplicationCustomHostAliasV2].
  /// [hostName] The domain name or hostname.
  /// [ip] The IP address.
  ApplicationCustomHostAliasV2({
    this.hostName,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'ip': ?ip,
    };
  }

  factory ApplicationCustomHostAliasV2.fromMap(Map<String, dynamic> map) {
    return ApplicationCustomHostAliasV2(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}

