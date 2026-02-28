// ignore_for_file: unused_element, unnecessary_cast

class DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties {
  /// A value that indicates that a row in a table is uniquely identified by the columns in a join key. This is used by Amazon QuickSight to optimize query performance.
  final bool? uniqueKey;

  /// Creates a new [DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties].
  /// [uniqueKey] A value that indicates that a row in a table is uniquely identified by the columns in a join key. This is used by Amazon QuickSight to optimize query performance.
  DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties({
    this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final uniqueKeyValue = uniqueKey;
    if (uniqueKeyValue != null) {
      map['uniqueKey'] = uniqueKeyValue;
    }
    return map;
  }

  factory DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties.fromMap(
      Map<String, dynamic> map) {
    return DataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperties(
      uniqueKey: map['uniqueKey'] == null ? null : map['uniqueKey'] as bool,
    );
  }
}
