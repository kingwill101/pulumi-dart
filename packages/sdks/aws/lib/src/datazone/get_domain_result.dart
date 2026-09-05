// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomain.
class GetDomainResult {
  /// ARN of the Domain.
  final String? arn;
  /// The date and time the Domain was created.
  final String? createdAt;
  /// Description of the Domain.
  final String? description;
  /// Version of the Domain.
  final String? domainVersion;
  final String? id;
  /// The date and time the Domain was last updated.
  final String? lastUpdatedAt;
  /// The AWS account ID that owns the Domain.
  final String? managedAccountId;
  final String? name;
  /// URL of the Domain.
  final String? portalUrl;
  final String? region;
  /// ID of the root domain unit.
  final String? rootDomainUnitId;
  /// Status of the Domain.
  final String? status;

  /// Creates a new [GetDomainResult].
  /// [arn] ARN of the Domain.
  /// [createdAt] The date and time the Domain was created.
  /// [description] Description of the Domain.
  /// [domainVersion] Version of the Domain.
  /// [id] Optional.
  /// [lastUpdatedAt] The date and time the Domain was last updated.
  /// [managedAccountId] The AWS account ID that owns the Domain.
  /// [name] Optional.
  /// [portalUrl] URL of the Domain.
  /// [region] Optional.
  /// [rootDomainUnitId] ID of the root domain unit.
  /// [status] Status of the Domain.
  const GetDomainResult({
    this.arn,
    this.createdAt,
    this.description,
    this.domainVersion,
    this.id,
    this.lastUpdatedAt,
    this.managedAccountId,
    this.name,
    this.portalUrl,
    this.region,
    this.rootDomainUnitId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'domainVersion': ?domainVersion,
      'id': ?id,
      'lastUpdatedAt': ?lastUpdatedAt,
      'managedAccountId': ?managedAccountId,
      'name': ?name,
      'portalUrl': ?portalUrl,
      'region': ?region,
      'rootDomainUnitId': ?rootDomainUnitId,
      'status': ?status,
    };
  }

  factory GetDomainResult.fromMap(Map<String, dynamic> map) {
    return GetDomainResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainVersion: (() { final guardedValue = map['domainVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedAt: (() { final guardedValue = map['lastUpdatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedAccountId: (() { final guardedValue = map['managedAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portalUrl: (() { final guardedValue = map['portalUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootDomainUnitId: (() { final guardedValue = map['rootDomainUnitId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
