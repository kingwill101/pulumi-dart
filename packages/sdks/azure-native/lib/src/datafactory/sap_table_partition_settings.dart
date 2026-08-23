// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings that will be leveraged for SAP table source partitioning.
class SapTablePartitionSettings {
  /// The maximum value of partitions the table will be split into. Type: integer (or Expression with resultType string).
  final pulumi.Input<dynamic>? maxPartitionsNumber;
  /// The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionLowerBound;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionUpperBound;

  /// Creates a new [SapTablePartitionSettings].
  /// [maxPartitionsNumber] The maximum value of partitions the table will be split into. Type: integer (or Expression with resultType string).
  /// [partitionColumnName] The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  const SapTablePartitionSettings({
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
      maxPartitionsNumber: (() { final guardedValue = map['maxPartitionsNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionColumnName: (() { final guardedValue = map['partitionColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionLowerBound: (() { final guardedValue = map['partitionLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionUpperBound: (() { final guardedValue = map['partitionUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
