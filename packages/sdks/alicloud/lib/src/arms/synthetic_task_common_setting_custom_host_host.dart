// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskCommonSettingCustomHostHost {
  /// Domain Name.
  final String domain;
  /// IpType.
  final int ipType;
  /// The IP list.
  final List<String> ips;

  /// Creates a new [SyntheticTaskCommonSettingCustomHostHost].
  /// [domain] Domain Name.
  /// [ipType] IpType.
  /// [ips] The IP list.
  SyntheticTaskCommonSettingCustomHostHost({
    required this.domain,
    required this.ipType,
    required this.ips,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'ipType': ipType,
      'ips': ips,
    };
  }

  factory SyntheticTaskCommonSettingCustomHostHost.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCommonSettingCustomHostHost(
      domain: map['domain'] as String,
      ipType: map['ipType'] as int,
      ips: (map['ips'] as List).cast<String>(),
    );
  }
}

