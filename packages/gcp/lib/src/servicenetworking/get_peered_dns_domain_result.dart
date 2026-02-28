// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPeeredDnsDomain.
class GetPeeredDnsDomainResult {
  final String dnsSuffix;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String network;
  final String parent;
  final String project;
  final String service;

  /// Creates a new [GetPeeredDnsDomainResult].
  /// [dnsSuffix] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [network] Required.
  /// [parent] Required.
  /// [project] Required.
  /// [service] Required.
  GetPeeredDnsDomainResult({
    required this.dnsSuffix,
    required this.id,
    required this.name,
    required this.network,
    required this.parent,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsSuffix'] = dnsSuffix;
    map['id'] = id;
    map['name'] = name;
    map['network'] = network;
    map['parent'] = parent;
    map['project'] = project;
    map['service'] = service;
    return map;
  }

  factory GetPeeredDnsDomainResult.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainResult(
      dnsSuffix: map['dnsSuffix'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      parent: map['parent'] as String,
      project: map['project'] as String,
      service: map['service'] as String,
    );
  }
}
