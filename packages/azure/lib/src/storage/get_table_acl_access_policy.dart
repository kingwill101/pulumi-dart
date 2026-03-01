// ignore_for_file: unused_element, unnecessary_cast


class GetTableAclAccessPolicy {
  final String expiry;
  final String permissions;
  final String start;

  /// Creates a new [GetTableAclAccessPolicy].
  /// [expiry] Required.
  /// [permissions] Required.
  /// [start] Required.
  GetTableAclAccessPolicy({
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

  factory GetTableAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetTableAclAccessPolicy(
      expiry: map['expiry'] as String,
      permissions: map['permissions'] as String,
      start: map['start'] as String,
    );
  }
}

