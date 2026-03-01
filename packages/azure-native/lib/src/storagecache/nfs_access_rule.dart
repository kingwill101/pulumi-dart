// ignore_for_file: unused_element, unnecessary_cast


/// Rule to place restrictions on portions of the cache namespace being presented to clients.
class NfsAccessRule {
  /// Access allowed by this rule.
  final String access;
  /// GID value that replaces 0 when rootSquash is true. This will use the value of anonymousUID if not provided.
  final String? anonymousGID;
  /// UID value that replaces 0 when rootSquash is true. 65534 will be used if not provided.
  final String? anonymousUID;
  /// Filter applied to the scope for this rule. The filter's format depends on its scope. 'default' scope matches all clients and has no filter value. 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24). 'host' takes an IP address or fully qualified domain name as filter. If a client does not match any filter rule and there is no default rule, access is denied.
  final String? filter;
  /// Map root accesses to anonymousUID and anonymousGID.
  final bool? rootSquash;
  /// Scope for this rule. The scope and filter determine which clients match the rule.
  final String scope;
  /// For the default policy, allow access to subdirectories under the root export. If this is set to no, clients can only mount the path '/'. If set to yes, clients can mount a deeper path, like '/a/b'.
  final bool? submountAccess;
  /// Allow SUID semantics.
  final bool? suid;

  /// Creates a new [NfsAccessRule].
  /// [access] Access allowed by this rule.
  /// [anonymousGID] GID value that replaces 0 when rootSquash is true. This will use the value of anonymousUID if not provided.
  /// [anonymousUID] UID value that replaces 0 when rootSquash is true. 65534 will be used if not provided.
  /// [filter] Filter applied to the scope for this rule. The filter's format depends on its scope. 'default' scope matches all clients and has no filter value. 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24). 'host' takes an IP address or fully qualified domain name as filter. If a client does not match any filter rule and there is no default rule, access is denied.
  /// [rootSquash] Map root accesses to anonymousUID and anonymousGID.
  /// [scope] Scope for this rule. The scope and filter determine which clients match the rule.
  /// [submountAccess] For the default policy, allow access to subdirectories under the root export. If this is set to no, clients can only mount the path '/'. If set to yes, clients can mount a deeper path, like '/a/b'.
  /// [suid] Allow SUID semantics.
  NfsAccessRule({
    required this.access,
    this.anonymousGID,
    this.anonymousUID,
    this.filter,
    this.rootSquash,
    required this.scope,
    this.submountAccess,
    this.suid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'anonymousGID': ?anonymousGID,
      'anonymousUID': ?anonymousUID,
      'filter': ?filter,
      'rootSquash': ?rootSquash,
      'scope': scope,
      'submountAccess': ?submountAccess,
      'suid': ?suid,
    };
  }

  factory NfsAccessRule.fromMap(Map<String, dynamic> map) {
    return NfsAccessRule(
      access: map['access'] as String,
      anonymousGID: map['anonymousGID'] == null ? null : map['anonymousGID'] as String,
      anonymousUID: map['anonymousUID'] == null ? null : map['anonymousUID'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      rootSquash: map['rootSquash'] == null ? null : map['rootSquash'] as bool,
      scope: map['scope'] as String,
      submountAccess: map['submountAccess'] == null ? null : map['submountAccess'] as bool,
      suid: map['suid'] == null ? null : map['suid'] as bool,
    );
  }
}

