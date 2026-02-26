// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSite.
class GetSiteResult2 {
  /// AWS Account identifier.
  final String accountId;

  /// Description.
  final String description;
  final String id;
  final String name;
  final String region;

  GetSiteResult2({
    required this.accountId,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetSiteResult2.fromMap(Map<String, dynamic> map) {
    return GetSiteResult2(
      accountId: map['accountId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
