// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] All fields defined in a principal are ANDed.
class Principal {
  /// An expression to specify custom condition.
  final String? condition;

  /// The groups the principal belongs to. Exact match, prefix match, and suffix match are supported.
  final List<String>? groups;

  /// IPv4 or IPv6 address or range (In CIDR format)
  final List<String>? ips;

  /// The namespaces. Exact match, prefix match, and suffix match are supported.
  final List<String>? namespaces;

  /// Negate of groups. Specifies exclusions.
  final List<String>? notGroups;

  /// Negate of IPs. Specifies exclusions.
  final List<String>? notIps;

  /// Negate of namespaces. Specifies exclusions.
  final List<String>? notNamespaces;

  /// Negate of users. Specifies exclusions.
  final List<String>? notUsers;

  /// A map of Istio attribute to expected values. Exact match, prefix match, and suffix match are supported for values. For example, `request.headers[version]: "v1"`. The properties are ANDed together.
  final Map<String, String>? properties;

  /// The user names/IDs or service accounts. Exact match, prefix match, and suffix match are supported.
  final List<String>? users;

  /// Creates a new [Principal].
  /// [condition] An expression to specify custom condition.
  /// [groups] The groups the principal belongs to. Exact match, prefix match, and suffix match are supported.
  /// [ips] IPv4 or IPv6 address or range (In CIDR format)
  /// [namespaces] The namespaces. Exact match, prefix match, and suffix match are supported.
  /// [notGroups] Negate of groups. Specifies exclusions.
  /// [notIps] Negate of IPs. Specifies exclusions.
  /// [notNamespaces] Negate of namespaces. Specifies exclusions.
  /// [notUsers] Negate of users. Specifies exclusions.
  /// [properties] A map of Istio attribute to expected values. Exact match, prefix match, and suffix match are supported for values. For example, `request.headers[version]: "v1"`. The properties are ANDed together.
  /// [users] The user names/IDs or service accounts. Exact match, prefix match, and suffix match are supported.
  Principal({
    this.condition,
    this.groups,
    this.ips,
    this.namespaces,
    this.notGroups,
    this.notIps,
    this.notNamespaces,
    this.notUsers,
    this.properties,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'groups': ?groups,
      'ips': ?ips,
      'namespaces': ?namespaces,
      'notGroups': ?notGroups,
      'notIps': ?notIps,
      'notNamespaces': ?notNamespaces,
      'notUsers': ?notUsers,
      'properties': ?properties,
      'users': ?users,
    };
  }

  factory Principal.fromMap(Map<String, dynamic> map) {
    return Principal(
      condition: map['condition'] == null ? null : map['condition'] as String,
      groups: map['groups'] == null
          ? null
          : (map['groups'] as List).cast<String>(),
      ips: map['ips'] == null ? null : (map['ips'] as List).cast<String>(),
      namespaces: map['namespaces'] == null
          ? null
          : (map['namespaces'] as List).cast<String>(),
      notGroups: map['notGroups'] == null
          ? null
          : (map['notGroups'] as List).cast<String>(),
      notIps: map['notIps'] == null
          ? null
          : (map['notIps'] as List).cast<String>(),
      notNamespaces: map['notNamespaces'] == null
          ? null
          : (map['notNamespaces'] as List).cast<String>(),
      notUsers: map['notUsers'] == null
          ? null
          : (map['notUsers'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      users: map['users'] == null
          ? null
          : (map['users'] as List).cast<String>(),
    );
  }
}
