// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getV2System.
class GetV2SystemResult {
  final String arn;
  /// Description of the system.
  final String description;
  /// KMS key ARN.
  final String kmsKeyId;
  /// Name of the system.
  final String name;
  /// AWS Organizations identifier for the system.
  final String organizationId;
  /// Organizational unit (OU) identifier for the system.
  final String ouId;
  final String region;
  /// Whether cross-account sharing is enabled.
  final bool sharingEnabled;
  /// System ID for cross-account use without exposing account structure.
  final String systemId;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetV2SystemResult].
  /// [arn] Required.
  /// [description] Description of the system.
  /// [kmsKeyId] KMS key ARN.
  /// [name] Name of the system.
  /// [organizationId] AWS Organizations identifier for the system.
  /// [ouId] Organizational unit (OU) identifier for the system.
  /// [region] Required.
  /// [sharingEnabled] Whether cross-account sharing is enabled.
  /// [systemId] System ID for cross-account use without exposing account structure.
  /// [tags] Map of tags assigned to the resource.
  const GetV2SystemResult({
    required this.arn,
    required this.description,
    required this.kmsKeyId,
    required this.name,
    required this.organizationId,
    required this.ouId,
    required this.region,
    required this.sharingEnabled,
    required this.systemId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'description': description,
      'kmsKeyId': kmsKeyId,
      'name': name,
      'organizationId': organizationId,
      'ouId': ouId,
      'region': region,
      'sharingEnabled': sharingEnabled,
      'systemId': systemId,
      'tags': tags,
    };
  }

  factory GetV2SystemResult.fromMap(Map<String, dynamic> map) {
    return GetV2SystemResult(
      arn: map['arn'] as String,
      description: map['description'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] as String,
      organizationId: map['organizationId'] as String,
      ouId: map['ouId'] as String,
      region: map['region'] as String,
      sharingEnabled: map['sharingEnabled'] as bool,
      systemId: map['systemId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
