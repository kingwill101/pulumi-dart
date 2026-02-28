// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstanceDnsName {
  final String connectionType;
  final String dnsScope;
  /// The name of the instance.
  final String name;

  /// Creates a new [GetDatabaseInstanceDnsName].
  /// [connectionType] Required.
  /// [dnsScope] Required.
  /// [name] The name of the instance.
  GetDatabaseInstanceDnsName({
    required this.connectionType,
    required this.dnsScope,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'dnsScope': dnsScope,
      'name': name,
    };
  }

  factory GetDatabaseInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceDnsName(
      connectionType: map['connectionType'] as String,
      dnsScope: map['dnsScope'] as String,
      name: map['name'] as String,
    );
  }
}

