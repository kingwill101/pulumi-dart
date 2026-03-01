// ignore_for_file: unused_element, unnecessary_cast


/// The settings that will be leveraged for SAP HANA source partitioning.
class SapHanaPartitionSettings {
  /// The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final dynamic partitionColumnName;

  /// Creates a new [SapHanaPartitionSettings].
  /// [partitionColumnName] The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  SapHanaPartitionSettings({
    this.partitionColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionColumnName': ?partitionColumnName,
    };
  }

  factory SapHanaPartitionSettings.fromMap(Map<String, dynamic> map) {
    return SapHanaPartitionSettings(
      partitionColumnName: map['partitionColumnName'] == null ? null : map['partitionColumnName'],
    );
  }
}

