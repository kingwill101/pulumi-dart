// ignore_for_file: unused_element, unnecessary_cast

class GetRoleRoleLastUsed {
  /// The date and time, in RFC 3339 format, that the role was last used.
  final String lastUsedDate;

  /// The name of the AWS Region in which the role was last used.
  final String region;

  GetRoleRoleLastUsed({
    required this.lastUsedDate,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastUsedDate'] = lastUsedDate;
    map['region'] = region;
    return map;
  }

  factory GetRoleRoleLastUsed.fromMap(Map<String, dynamic> map) {
    return GetRoleRoleLastUsed(
      lastUsedDate: map['lastUsedDate'] as String,
      region: map['region'] as String,
    );
  }
}
