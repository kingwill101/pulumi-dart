// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty {
  final pulumi.Input<bool> uniqueKey;

  /// Creates a new [GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty].
  /// [uniqueKey] Required.
  const GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty({
    required this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKey': uniqueKey,
    };
  }

  factory GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty(
      uniqueKey: pulumi.Input.fromValue(map['uniqueKey'] as bool),
    );
  }
}

