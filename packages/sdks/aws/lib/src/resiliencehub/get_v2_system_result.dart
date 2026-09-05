// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2System.
class GetV2SystemResult {
  final String? arn;
  /// Description of the system.
  final String? description;
  /// KMS key ARN.
  final String? kmsKeyId;
  /// Name of the system.
  final String? name;
  /// AWS Organizations identifier for the system.
  final String? organizationId;
  /// Organizational unit (OU) identifier for the system.
  final String? ouId;
  final String? region;
  /// Whether cross-account sharing is enabled.
  final bool? sharingEnabled;
  /// System ID for cross-account use without exposing account structure.
  final String? systemId;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetV2SystemResult].
  /// [arn] Optional.
  /// [description] Description of the system.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the system.
  /// [organizationId] AWS Organizations identifier for the system.
  /// [ouId] Organizational unit (OU) identifier for the system.
  /// [region] Optional.
  /// [sharingEnabled] Whether cross-account sharing is enabled.
  /// [systemId] System ID for cross-account use without exposing account structure.
  /// [tags] Map of tags assigned to the resource.
  const GetV2SystemResult({
    this.arn,
    this.description,
    this.kmsKeyId,
    this.name,
    this.organizationId,
    this.ouId,
    this.region,
    this.sharingEnabled,
    this.systemId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'organizationId': ?organizationId,
      'ouId': ?ouId,
      'region': ?region,
      'sharingEnabled': ?sharingEnabled,
      'systemId': ?systemId,
      'tags': ?tags,
    };
  }

  factory GetV2SystemResult.fromMap(Map<String, dynamic> map) {
    return GetV2SystemResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ouId: (() { final guardedValue = map['ouId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharingEnabled: (() { final guardedValue = map['sharingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
