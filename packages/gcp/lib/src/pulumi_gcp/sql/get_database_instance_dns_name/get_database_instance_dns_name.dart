// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceDnsName {
  final String connectionType;
  final String dnsScope;

  /// The name of the instance.
  final String name;

  GetDatabaseInstanceDnsName({
    required this.connectionType,
    required this.dnsScope,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionType'] = connectionType;
    map['dnsScope'] = dnsScope;
    map['name'] = name;
    return map;
  }

  factory GetDatabaseInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceDnsName(
      connectionType: map['connectionType'] as String,
      dnsScope: map['dnsScope'] as String,
      name: map['name'] as String,
    );
  }
}
