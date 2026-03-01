// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty {
  final bool uniqueKey;

  /// Creates a new [GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty].
  /// [uniqueKey] Required.
  GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty({
    required this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uniqueKey': uniqueKey,
    };
  }

  factory GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty.fromMap(Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty(
      uniqueKey: map['uniqueKey'] as bool,
    );
  }
}

