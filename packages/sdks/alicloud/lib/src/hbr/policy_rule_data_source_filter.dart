// ignore_for_file: unused_element, unnecessary_cast


class PolicyRuleDataSourceFilter {
  /// The data source type. Value range: UDM_ECS: indicates that the ECS machine is backed up. This data source type is supported only when PolicyType is set to UDM_ECS_ONLY. OSS: indicates an OSS backup. This data source type is supported only when the PolicyType value is STANDARD. NAS: indicates an Alibaba Cloud NAS backup. This data source type is supported only when the PolicyType value is STANDARD. ECS_FILE: indicates an ECS file backup. This data source type is supported only when the PolicyType value is STANDARD. OTS: indicates the Tablestore backup. This data source type is supported only when the PolicyType value is STANDARD.
  final String? sourceType;

  /// Creates a new [PolicyRuleDataSourceFilter].
  /// [sourceType] The data source type. Value range: UDM_ECS: indicates that the ECS machine is backed up. This data source type is supported only when PolicyType is set to UDM_ECS_ONLY. OSS: indicates an OSS backup. This data source type is supported only when the PolicyType value is STANDARD. NAS: indicates an Alibaba Cloud NAS backup. This data source type is supported only when the PolicyType value is STANDARD. ECS_FILE: indicates an ECS file backup. This data source type is supported only when the PolicyType value is STANDARD. OTS: indicates the Tablestore backup. This data source type is supported only when the PolicyType value is STANDARD.
  PolicyRuleDataSourceFilter({
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceType': ?sourceType,
    };
  }

  factory PolicyRuleDataSourceFilter.fromMap(Map<String, dynamic> map) {
    return PolicyRuleDataSourceFilter(
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

