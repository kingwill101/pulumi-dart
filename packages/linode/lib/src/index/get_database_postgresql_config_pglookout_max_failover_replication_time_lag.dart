// ignore_for_file: unused_element, unnecessary_cast


class GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag {
  final String description;
  final int maximum;
  final int minimum;
  final bool requiresRestart;
  final String type;

  /// Creates a new [GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag].
  /// [description] Required.
  /// [maximum] Required.
  /// [minimum] Required.
  /// [requiresRestart] Required.
  /// [type] Required.
  GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag({
    required this.description,
    required this.maximum,
    required this.minimum,
    required this.requiresRestart,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'maximum': maximum,
      'minimum': minimum,
      'requiresRestart': requiresRestart,
      'type': type,
    };
  }

  factory GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlConfigPglookoutMaxFailoverReplicationTimeLag(
      description: map['description'] as String,
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
      requiresRestart: map['requiresRestart'] as bool,
      type: map['type'] as String,
    );
  }
}

