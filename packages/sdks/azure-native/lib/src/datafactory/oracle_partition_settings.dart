// ignore_for_file: unused_element, unnecessary_cast


/// The settings that will be leveraged for Oracle source partitioning.
class OraclePartitionSettings {
  /// The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionLowerBound;
  /// Names of the physical partitions of Oracle table.
  final List<dynamic>? partitionNames;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionUpperBound;

  /// Creates a new [OraclePartitionSettings].
  /// [partitionColumnName] The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionNames] Names of the physical partitions of Oracle table.
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  OraclePartitionSettings({
    this.partitionColumnName,
    this.partitionLowerBound,
    this.partitionNames,
    this.partitionUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionColumnName': ?partitionColumnName,
      'partitionLowerBound': ?partitionLowerBound,
      'partitionNames': ?partitionNames,
      'partitionUpperBound': ?partitionUpperBound,
    };
  }

  factory OraclePartitionSettings.fromMap(Map<String, dynamic> map) {
    return OraclePartitionSettings(
      partitionColumnName: map['partitionColumnName'] == null ? null : map['partitionColumnName'],
      partitionLowerBound: map['partitionLowerBound'] == null ? null : map['partitionLowerBound'],
      partitionNames: map['partitionNames'] == null ? null : (map['partitionNames'] as List).cast<dynamic>(),
      partitionUpperBound: map['partitionUpperBound'] == null ? null : map['partitionUpperBound'],
    );
  }
}

