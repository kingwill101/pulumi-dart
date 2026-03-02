// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings that will be leveraged for Oracle source partitioning.
class OraclePartitionSettingsResponse {
  /// The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionColumnName;
  /// The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionLowerBound;
  /// Names of the physical partitions of Oracle table.
  final pulumi.Input<List<dynamic>>? partitionNames;
  /// The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionUpperBound;

  /// Creates a new [OraclePartitionSettingsResponse].
  /// [partitionColumnName] The name of the column in integer type that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionLowerBound] The minimum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  /// [partitionNames] Names of the physical partitions of Oracle table.
  /// [partitionUpperBound] The maximum value of column specified in partitionColumnName that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  OraclePartitionSettingsResponse({
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

  factory OraclePartitionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return OraclePartitionSettingsResponse(
      partitionColumnName: map['partitionColumnName'] == null ? null : (map['partitionColumnName']).input(),
      partitionLowerBound: map['partitionLowerBound'] == null ? null : (map['partitionLowerBound']).input(),
      partitionNames: map['partitionNames'] == null ? null : ((map['partitionNames'] as List).cast<dynamic>()).input(),
      partitionUpperBound: map['partitionUpperBound'] == null ? null : (map['partitionUpperBound']).input(),
    );
  }
}

