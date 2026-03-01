// ignore_for_file: unused_element, unnecessary_cast


/// Defines rules that enforce minimum and maximum file size limits for data replication.
class DataSizeRuleset {
  /// Optional. Specifies the maximum allowed size (in bytes) for files to be replicated. Any file size greater than maximum will be denied replication.
  final double? maximum;
  /// Optional. Default is 0. Specifies the minimum required size (in bytes) for a file to be eligible for replication. Any file size less than minimum will be denied replication.
  final double? minimum;

  /// Creates a new [DataSizeRuleset].
  /// [maximum] Optional. Specifies the maximum allowed size (in bytes) for files to be replicated. Any file size greater than maximum will be denied replication.
  /// [minimum] Optional. Default is 0. Specifies the minimum required size (in bytes) for a file to be eligible for replication. Any file size less than minimum will be denied replication.
  DataSizeRuleset({
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': ?maximum,
      'minimum': ?minimum,
    };
  }

  factory DataSizeRuleset.fromMap(Map<String, dynamic> map) {
    return DataSizeRuleset(
      maximum: map['maximum'] == null ? null : map['maximum'] as double,
      minimum: map['minimum'] == null ? null : map['minimum'] as double,
    );
  }
}

