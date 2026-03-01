// ignore_for_file: unused_element, unnecessary_cast


/// The settings that will be leveraged for Netezza source partitioning.
class NetezzaPartitionSettingsResponse {
  /// The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionLowerBound;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionUpperBound;

  /// Creates a new [NetezzaPartitionSettingsResponse].
  /// [partitionColumnName] The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  NetezzaPartitionSettingsResponse({
    this.partitionColumnName,
    this.partitionLowerBound,
    this.partitionUpperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionColumnName': ?partitionColumnName,
      'partitionLowerBound': ?partitionLowerBound,
      'partitionUpperBound': ?partitionUpperBound,
    };
  }

  factory NetezzaPartitionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NetezzaPartitionSettingsResponse(
      partitionColumnName: map['partitionColumnName'] == null ? null : map['partitionColumnName'],
      partitionLowerBound: map['partitionLowerBound'] == null ? null : map['partitionLowerBound'],
      partitionUpperBound: map['partitionUpperBound'] == null ? null : map['partitionUpperBound'],
    );
  }
}

