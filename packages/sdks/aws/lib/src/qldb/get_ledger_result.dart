// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLedger.
class GetLedgerResult {
  final String arn;
  final bool deletionProtection;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final String name;
  final String permissionsMode;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetLedgerResult].
  /// [arn] Required.
  /// [deletionProtection] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] Required.
  /// [name] Required.
  /// [permissionsMode] Required.
  /// [region] Required.
  /// [tags] Required.
  const GetLedgerResult({
    required this.arn,
    required this.deletionProtection,
    required this.id,
    required this.kmsKey,
    required this.name,
    required this.permissionsMode,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'deletionProtection': deletionProtection,
      'id': id,
      'kmsKey': kmsKey,
      'name': name,
      'permissionsMode': permissionsMode,
      'region': region,
      'tags': tags,
    };
  }

  factory GetLedgerResult.fromMap(Map<String, dynamic> map) {
    return GetLedgerResult(
      arn: map['arn'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      name: map['name'] as String,
      permissionsMode: map['permissionsMode'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

