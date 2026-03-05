// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings that will be leveraged for teradata source partitioning.
class TeradataPartitionSettings {
  /// The name of the column that will be used for proceeding range or hash partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionLowerBound;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionUpperBound;

  /// Creates a new [TeradataPartitionSettings].
  /// [partitionColumnName] The name of the column that will be used for proceeding range or hash partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  TeradataPartitionSettings({
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

  factory TeradataPartitionSettings.fromMap(Map<String, dynamic> map) {
    return TeradataPartitionSettings(
      partitionColumnName: (() { final guardedValue = map['partitionColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionLowerBound: (() { final guardedValue = map['partitionLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionUpperBound: (() { final guardedValue = map['partitionUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

