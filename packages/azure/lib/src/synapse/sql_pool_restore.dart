// ignore_for_file: unused_element, unnecessary_cast


class SqlPoolRestore {
  /// Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
  final String pointInTime;
  /// The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
  final String sourceDatabaseId;

  /// Creates a new [SqlPoolRestore].
  /// [pointInTime] Specifies the Snapshot time to restore formatted as an RFC3339 date string. Changing this forces a new Synapse SQL Pool to be created.
  /// [sourceDatabaseId] The ID of the Synapse SQL Pool or SQL Database which is to restore. Changing this forces a new Synapse SQL Pool to be created.
  SqlPoolRestore({
    required this.pointInTime,
    required this.sourceDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTime': pointInTime,
      'sourceDatabaseId': sourceDatabaseId,
    };
  }

  factory SqlPoolRestore.fromMap(Map<String, dynamic> map) {
    return SqlPoolRestore(
      pointInTime: map['pointInTime'] as String,
      sourceDatabaseId: map['sourceDatabaseId'] as String,
    );
  }
}

