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

  /// Creates a new [GetDomainResult].
  /// [arn] ARN of the Domain.
  /// [createdAt] The date and time the Domain was created.
  /// [description] Description of the Domain.
  /// [domainVersion] Version of the Domain.
  /// [id] Required.
  /// [lastUpdatedAt] The date and time the Domain was last updated.
  /// [managedAccountId] The AWS account ID that owns the Domain.
  /// [name] Required.
  /// [portalUrl] URL of the Domain.
  /// [region] Required.
  /// [rootDomainUnitId] ID of the root domain unit.
  /// [status] Status of the Domain.
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
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'description': description,
      'domainVersion': domainVersion,
      'id': id,
      'lastUpdatedAt': lastUpdatedAt,
      'managedAccountId': managedAccountId,
      'name': name,
      'portalUrl': portalUrl,
      'region': region,
      'rootDomainUnitId': rootDomainUnitId,
      'status': status,
    };
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

