// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVault.
class GetVaultResult {
  /// ARN of the vault.
  final String arn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Server-side encryption key that is used to protect your backups.
  final String kmsKeyArn;
  final String name;
  /// Number of recovery points that are stored in a backup vault.
  final int recoveryPoints;
  final String region;
  /// Metadata that you can assign to help organize the resources that you create.
  final Map<String, String> tags;

  /// Creates a new [GetVaultResult].
  /// [arn] ARN of the vault.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] Server-side encryption key that is used to protect your backups.
  /// [name] Required.
  /// [recoveryPoints] Number of recovery points that are stored in a backup vault.
  /// [region] Required.
  /// [tags] Metadata that you can assign to help organize the resources that you create.
  const GetVaultResult({
    required this.arn,
    required this.id,
    required this.kmsKeyArn,
    required this.name,
    required this.recoveryPoints,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'kmsKeyArn': kmsKeyArn,
      'name': name,
      'recoveryPoints': recoveryPoints,
      'region': region,
      'tags': tags,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      name: map['name'] as String,
      recoveryPoints: map['recoveryPoints'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

