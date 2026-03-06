// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings that will be leveraged for AmazonRdsForOracle source partitioning.
class AmazonRdsForOraclePartitionSettingsResponse {
  /// The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionLowerBound;
  /// Names of the physical partitions of AmazonRdsForOracle table.
  final pulumi.Input<List<dynamic>>? partitionNames;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionUpperBound;

  /// Creates a new [AmazonRdsForOraclePartitionSettingsResponse].
  /// [partitionColumnName] The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionNames] Names of the physical partitions of AmazonRdsForOracle table.
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  const AmazonRdsForOraclePartitionSettingsResponse({
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

  factory AmazonRdsForOraclePartitionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AmazonRdsForOraclePartitionSettingsResponse(
      partitionColumnName: (() { final guardedValue = map['partitionColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionLowerBound: (() { final guardedValue = map['partitionLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionNames: (() { final guardedValue = map['partitionNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      partitionUpperBound: (() { final guardedValue = map['partitionUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

