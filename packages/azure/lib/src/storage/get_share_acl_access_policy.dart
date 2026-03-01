// ignore_for_file: unused_element, unnecessary_cast


class GetShareAclAccessPolicy {
  /// The time at which this Access Policy is valid until.
  final String expiry;
  /// The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  final String permissions;
  /// The time at which this Access Policy is valid from.
  final String start;

  /// Creates a new [GetShareAclAccessPolicy].
  /// [expiry] The time at which this Access Policy is valid until.
  /// [permissions] The permissions which should be associated with this Shared Identifier. Possible value is combination of `r` (read), `w` (write), `d` (delete), and `l` (list).
  /// [start] The time at which this Access Policy is valid from.
  GetShareAclAccessPolicy({
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

  factory GetShareAclAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetShareAclAccessPolicy(
      expiry: map['expiry'] as String,
      permissions: map['permissions'] as String,
      start: map['start'] as String,
    );
  }
}

