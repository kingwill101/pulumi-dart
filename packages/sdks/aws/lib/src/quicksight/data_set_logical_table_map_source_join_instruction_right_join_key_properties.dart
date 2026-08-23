// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties {
  /// A value that indicates that a row in a table is uniquely identified by the columns in a join key. This is used by Amazon QuickSight to optimize query performance.
  final pulumi.Input<bool>? uniqueKey;

  /// Creates a new [DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties].
  /// [uniqueKey] A value that indicates that a row in a table is uniquely identified by the columns in a join key. This is used by Amazon QuickSight to optimize query performance.
  const DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties({
    this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKey': ?uniqueKey,
    };
  }

  factory DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties.fromMap(Map<String, dynamic> map) {
    return DataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperties(
      uniqueKey: (() { final guardedValue = map['uniqueKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
