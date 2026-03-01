// ignore_for_file: unused_element, unnecessary_cast


/// Metadata about the resource
class DataCollectionRuleResponseMetadata {
  /// Azure offering managing this resource on-behalf-of customer.
  final String provisionedBy;
  /// Resource Id of azure offering managing this resource on-behalf-of customer.
  final String provisionedByResourceId;

  /// Creates a new [DataCollectionRuleResponseMetadata].
  /// [provisionedBy] Azure offering managing this resource on-behalf-of customer.
  /// [provisionedByResourceId] Resource Id of azure offering managing this resource on-behalf-of customer.
  DataCollectionRuleResponseMetadata({
    required this.provisionedBy,
    required this.provisionedByResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedBy': provisionedBy,
      'provisionedByResourceId': provisionedByResourceId,
    };
  }

  factory DataCollectionRuleResponseMetadata.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResponseMetadata(
      provisionedBy: map['provisionedBy'] as String,
      provisionedByResourceId: map['provisionedByResourceId'] as String,
    );
  }
}

