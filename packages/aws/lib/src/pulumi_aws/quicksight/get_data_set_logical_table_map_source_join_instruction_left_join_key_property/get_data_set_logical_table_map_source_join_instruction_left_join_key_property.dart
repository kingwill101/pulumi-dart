// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty {
  final bool uniqueKey;

  GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty({
    required this.uniqueKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uniqueKey'] = uniqueKey;
    return map;
  }

  factory GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapSourceJoinInstructionLeftJoinKeyProperty(
      uniqueKey: map['uniqueKey'] as bool,
    );
  }
}
