// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings that will be leveraged for SAP HANA source partitioning.
class SapHanaPartitionSettingsResponse {
  /// The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionColumnName;

  /// Creates a new [SapHanaPartitionSettingsResponse].
  /// [partitionColumnName] The name of the column that will be used for proceeding range partitioning. Type: string (or Expression with resultType string).
  const SapHanaPartitionSettingsResponse({
    this.partitionColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionColumnName': ?partitionColumnName,
    };
  }

  factory SapHanaPartitionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SapHanaPartitionSettingsResponse(
      partitionColumnName: (() { final guardedValue = map['partitionColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

