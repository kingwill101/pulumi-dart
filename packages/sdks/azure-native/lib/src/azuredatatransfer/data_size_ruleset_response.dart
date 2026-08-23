// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines rules that enforce minimum and maximum file size limits for data replication.
class DataSizeRulesetResponse {
  /// Optional. Specifies the maximum allowed size (in bytes) for files to be replicated. Any file size greater than maximum will be denied replication.
  final pulumi.Input<double>? maximum;
  /// Optional. Default is 0. Specifies the minimum required size (in bytes) for a file to be eligible for replication. Any file size less than minimum will be denied replication.
  final pulumi.Input<double>? minimum;

  /// Creates a new [DataSizeRulesetResponse].
  /// [maximum] Optional. Specifies the maximum allowed size (in bytes) for files to be replicated. Any file size greater than maximum will be denied replication.
  /// [minimum] Optional. Default is 0. Specifies the minimum required size (in bytes) for a file to be eligible for replication. Any file size less than minimum will be denied replication.
  const DataSizeRulesetResponse({
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': ?maximum,
      'minimum': ?minimum,
    };
  }

  factory DataSizeRulesetResponse.fromMap(Map<String, dynamic> map) {
    return DataSizeRulesetResponse(
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
