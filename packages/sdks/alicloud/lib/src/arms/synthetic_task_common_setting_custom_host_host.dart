// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskCommonSettingCustomHostHost {
  /// Domain Name.
  final pulumi.Input<String> domain;
  /// IpType.
  final pulumi.Input<int> ipType;
  /// The IP list.
  final pulumi.Input<List<String>> ips;

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
      domain: (map['domain'] as String).input(),
      ipType: (map['ipType'] as int).input(),
      ips: ((map['ips'] as List).cast<String>()).input(),
    );
  }
}

