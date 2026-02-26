// ignore_for_file: unused_element, unnecessary_cast

class WorkforceSourceIpConfig {
  /// A list of up to 10 CIDR values.
  final List<String> cidrs;

  WorkforceSourceIpConfig({
    required this.cidrs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrs'] = cidrs;
    return map;
  }

  factory WorkforceSourceIpConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceSourceIpConfig(
      cidrs: (map['cidrs'] as List).cast<String>(),
    );
  }
}
