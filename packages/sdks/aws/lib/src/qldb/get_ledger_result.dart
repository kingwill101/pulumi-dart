// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLedger.
class GetLedgerResult {
  /// ARN of the QLDB Ledger.
  final String? arn;
  /// Deletion protection setting of the QLDB Ledger.
  final bool? deletionProtection;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// KMS key used for encryption of data at rest in the ledger.
  final String? kmsKey;
  final String? name;
  /// Permissions mode of the QLDB Ledger.
  final String? permissionsMode;
  final String? region;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetLedgerResult].
  /// [arn] ARN of the QLDB Ledger.
  /// [deletionProtection] Deletion protection setting of the QLDB Ledger.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] KMS key used for encryption of data at rest in the ledger.
  /// [name] Optional.
  /// [permissionsMode] Permissions mode of the QLDB Ledger.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the resource.
  const GetLedgerResult({
    this.arn,
    this.deletionProtection,
    this.id,
    this.kmsKey,
    this.name,
    this.permissionsMode,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtection': ?deletionProtection,
      'id': ?id,
      'kmsKey': ?kmsKey,
      'name': ?name,
      'permissionsMode': ?permissionsMode,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLedgerResult.fromMap(Map<String, dynamic> map) {
    return GetLedgerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionsMode: (() { final guardedValue = map['permissionsMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
