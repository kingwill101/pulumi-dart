// ignore_for_file: unused_element, unnecessary_cast


class TableAclAccessPolicy {
  /// The ISO8061 UTC time at which this Access Policy should be valid until.
  final String expiry;
  /// The permissions which should associated with this Shared Identifier.
  final String permissions;
  /// The ISO8061 UTC time at which this Access Policy should be valid from.
  final String start;

  /// Creates a new [TableAclAccessPolicy].
  /// [expiry] The ISO8061 UTC time at which this Access Policy should be valid until.
  /// [permissions] The permissions which should associated with this Shared Identifier.
  /// [start] The ISO8061 UTC time at which this Access Policy should be valid from.
  TableAclAccessPolicy({
    required this.expiry,
    required this.permissions,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'permissions': permissions,
      'start': start,
    };
  }

  factory TableAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return TableAclAccessPolicy(
      expiry: map['expiry'] as String,
      permissions: map['permissions'] as String,
      start: map['start'] as String,
    );
  }
}

