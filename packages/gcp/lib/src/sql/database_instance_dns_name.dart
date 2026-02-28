// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceDnsName {
  /// The connection type of the DNS name. Can be either `PUBLIC`, `PRIVATE_SERVICES_ACCESS`, or `PRIVATE_SERVICE_CONNECT`.
  final String? connectionType;

  /// The scope that the DNS name applies to.
  final String? dnsScope;

  /// The name of the instance. If the name is left
  /// blank, the provider will randomly generate one when the instance is first
  /// created. This is done because after a name is used, it cannot be reused for
  /// up to [one week](https://cloud.google.com/sql/docs/delete-instance).
  final String? name;

  /// Creates a new [DatabaseInstanceDnsName].
  /// [connectionType] The connection type of the DNS name. Can be either `PUBLIC`, `PRIVATE_SERVICES_ACCESS`, or `PRIVATE_SERVICE_CONNECT`.
  /// [dnsScope] The scope that the DNS name applies to.
  /// [name] The name of the instance. If the name is left
  DatabaseInstanceDnsName({
    this.connectionType,
    this.dnsScope,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final dnsScopeValue = dnsScope;
    if (dnsScopeValue != null) {
      map['dnsScope'] = dnsScopeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory DatabaseInstanceDnsName.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceDnsName(
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      dnsScope: map['dnsScope'] == null ? null : map['dnsScope'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
