// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDomain.
class GetDomainResult {
  /// ARN of the Domain.
  final String arn;

  /// The date and time the Domain was created.
  final String createdAt;

  /// Description of the Domain.
  final String description;

  /// Version of the Domain.
  final String domainVersion;
  final String id;

  /// The date and time the Domain was last updated.
  final String lastUpdatedAt;

  /// The AWS account ID that owns the Domain.
  final String managedAccountId;
  final String name;

  /// URL of the Domain.
  final String portalUrl;
  final String region;

  /// ID of the root domain unit.
  final String rootDomainUnitId;

  /// Status of the Domain.
  final String status;

  GetDomainResult({
    required this.arn,
    required this.createdAt,
    required this.description,
    required this.domainVersion,
    required this.id,
    required this.lastUpdatedAt,
    required this.managedAccountId,
    required this.name,
    required this.portalUrl,
    required this.region,
    required this.rootDomainUnitId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['domainVersion'] = domainVersion;
    map['id'] = id;
    map['lastUpdatedAt'] = lastUpdatedAt;
    map['managedAccountId'] = managedAccountId;
    map['name'] = name;
    map['portalUrl'] = portalUrl;
    map['region'] = region;
    map['rootDomainUnitId'] = rootDomainUnitId;
    map['status'] = status;
    return map;
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      domainVersion: map['domainVersion'] as String,
      id: map['id'] as String,
      lastUpdatedAt: map['lastUpdatedAt'] as String,
      managedAccountId: map['managedAccountId'] as String,
      name: map['name'] as String,
      portalUrl: map['portalUrl'] as String,
      region: map['region'] as String,
      rootDomainUnitId: map['rootDomainUnitId'] as String,
      status: map['status'] as String,
    );
  }
}
