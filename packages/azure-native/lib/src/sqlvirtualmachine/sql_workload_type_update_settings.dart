// ignore_for_file: unused_element, unnecessary_cast


/// Set workload type to optimize storage for SQL Server.
class SqlWorkloadTypeUpdateSettings {
  /// SQL Server workload type.
  final String? sqlWorkloadType;

  /// Creates a new [SqlWorkloadTypeUpdateSettings].
  /// [sqlWorkloadType] SQL Server workload type.
  SqlWorkloadTypeUpdateSettings({
    this.sqlWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlWorkloadType': ?sqlWorkloadType,
    };
  }

  factory SqlWorkloadTypeUpdateSettings.fromMap(Map<String, dynamic> map) {
    return SqlWorkloadTypeUpdateSettings(
      sqlWorkloadType: map['sqlWorkloadType'] == null ? null : map['sqlWorkloadType'] as String,
    );
  }
}

