// ignore_for_file: unused_element, unnecessary_cast

class WorkforceSourceIpConfig {
  /// A list of up to 10 CIDR values.
  final List<String> cidrs;

  /// Creates a new [WorkforceSourceIpConfig].
  /// [cidrs] A list of up to 10 CIDR values.
  WorkforceSourceIpConfig({required this.cidrs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidrs': cidrs};
  }

  factory WorkforceSourceIpConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceSourceIpConfig(
      cidrs: (map['cidrs'] as List).cast<String>(),
    );
  }
}
