// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty {
  final bool uniqueKey;

  /// Creates a new [GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty].
  /// [uniqueKey] Required.
  GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty({
    required this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uniqueKey': uniqueKey};
  }

  factory GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetLogicalTableMapSourceJoinInstructionRightJoinKeyProperty(
      uniqueKey: map['uniqueKey'] as bool,
    );
  }
}
