// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVault.
class GetVaultResult {
  /// ARN of the vault.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Server-side encryption key that is used to protect your backups.
  final String? kmsKeyArn;
  final String? name;
  /// Number of recovery points that are stored in a backup vault.
  final int? recoveryPoints;
  final String? region;
  /// Metadata that you can assign to help organize the resources that you create.
  final Map<String, String>? tags;

  /// Creates a new [GetVaultResult].
  /// [arn] ARN of the vault.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] Server-side encryption key that is used to protect your backups.
  /// [name] Optional.
  /// [recoveryPoints] Number of recovery points that are stored in a backup vault.
  /// [region] Optional.
  /// [tags] Metadata that you can assign to help organize the resources that you create.
  const GetVaultResult({
    this.arn,
    this.id,
    this.kmsKeyArn,
    this.name,
    this.recoveryPoints,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'recoveryPoints': ?recoveryPoints,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryPoints: (() { final guardedValue = map['recoveryPoints']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
