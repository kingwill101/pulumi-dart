// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceDnsName {
  final String connectionType;
  final String dnsScope;
  final String name;

  GetDatabaseInstancesInstanceDnsName({
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

  factory GetDatabaseInstancesInstanceDnsName.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceDnsName(
      connectionType: map['connectionType'] as String,
      dnsScope: map['dnsScope'] as String,
      name: map['name'] as String,
    );
  }
}
