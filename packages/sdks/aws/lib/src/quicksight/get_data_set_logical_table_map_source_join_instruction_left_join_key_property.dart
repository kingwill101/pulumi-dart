// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty {
  final pulumi.Input<bool> uniqueKey;

  /// Creates a new [GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty].
  /// [uniqueKey] Required.
  const GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty({
    required this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKey': uniqueKey,
    };
  }

  factory GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty(
      uniqueKey: pulumi.Input.fromValue(map['uniqueKey'] as bool),
    );
  }
}
