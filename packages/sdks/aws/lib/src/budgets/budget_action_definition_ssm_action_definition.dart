// ignore_for_file: unused_element, unnecessary_cast


class BudgetActionDefinitionSsmActionDefinition {
  /// The action subType. Valid values are `STOP_EC2_INSTANCES` or `STOP_RDS_INSTANCES`.
  final String actionSubType;
  /// The EC2 and RDS instance IDs.
  final List<String> instanceIds;
  /// The Region to run the SSM document.
  final String region;

  /// Creates a new [BudgetActionDefinitionSsmActionDefinition].
  /// [actionSubType] The action subType. Valid values are `STOP_EC2_INSTANCES` or `STOP_RDS_INSTANCES`.
  /// [instanceIds] The EC2 and RDS instance IDs.
  /// [region] The Region to run the SSM document.
  BudgetActionDefinitionSsmActionDefinition({
    required this.actionSubType,
    required this.instanceIds,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionSubType': actionSubType,
      'instanceIds': instanceIds,
      'region': region,
    };
  }

  factory BudgetActionDefinitionSsmActionDefinition.fromMap(Map<String, dynamic> map) {
    return BudgetActionDefinitionSsmActionDefinition(
      actionSubType: map['actionSubType'] as String,
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

