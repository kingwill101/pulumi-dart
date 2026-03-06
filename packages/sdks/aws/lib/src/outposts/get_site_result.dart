// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSite.
class GetSiteResult {
  /// AWS Account identifier.
  final String accountId;
  /// Description.
  final String description;
  final String id;
  final String name;
  final String region;

  /// Creates a new [GetSiteResult].
  /// [accountId] AWS Account identifier.
  /// [description] Description.
  /// [id] Required.
  /// [name] Required.
  /// [region] Required.
  const GetSiteResult({
    required this.accountId,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': description,
      'id': id,
      'name': name,
      'region': region,
    };
  }

  factory GetSiteResult.fromMap(Map<String, dynamic> map) {
    return GetSiteResult(
      accountId: map['accountId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

