// ignore_for_file: unused_element, unnecessary_cast


/// The settings that will be leveraged for SAP table source partitioning.
class SapTablePartitionSettings {
  /// The maximum value of partitions the table will be split into. Type: integer (or Expression with resultType string).
  final dynamic maxPartitionsNumber;
  /// The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionLowerBound;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionUpperBound;

  /// Creates a new [SapTablePartitionSettings].
  /// [maxPartitionsNumber] The maximum value of partitions the table will be split into. Type: integer (or Expression with resultType string).
  /// [partitionColumnName] The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  SapTablePartitionSettings({
    this.maxPartitionsNumber,
    this.partitionColumnName,
    this.partitionLowerBound,
    this.partitionUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPartitionsNumber': ?maxPartitionsNumber,
      'partitionColumnName': ?partitionColumnName,
      'partitionLowerBound': ?partitionLowerBound,
      'partitionUpperBound': ?partitionUpperBound,
    };
  }

  factory SapTablePartitionSettings.fromMap(Map<String, dynamic> map) {
    return SapTablePartitionSettings(
      maxPartitionsNumber: map['maxPartitionsNumber'] == null ? null : map['maxPartitionsNumber'],
      partitionColumnName: map['partitionColumnName'] == null ? null : map['partitionColumnName'],
      partitionLowerBound: map['partitionLowerBound'] == null ? null : map['partitionLowerBound'],
      partitionUpperBound: map['partitionUpperBound'] == null ? null : map['partitionUpperBound'],
    );
  }
}

