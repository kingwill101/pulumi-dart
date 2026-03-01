// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleStreamDeclarationColumn {
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  final String type;

  /// Creates a new [GetDataCollectionRuleStreamDeclarationColumn].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [type] cSpecifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are `SystemAssigned` and `UserAssigned`.
  GetDataCollectionRuleStreamDeclarationColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetDataCollectionRuleStreamDeclarationColumn.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleStreamDeclarationColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

