// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata about the resource
class DataCollectionRuleResponseMetadata {
  /// Azure offering managing this resource on-behalf-of customer.
  final pulumi.Input<String> provisionedBy;
  /// Resource Id of azure offering managing this resource on-behalf-of customer.
  final pulumi.Input<String> provisionedByResourceId;

  /// Creates a new [DataCollectionRuleResponseMetadata].
  /// [provisionedBy] Azure offering managing this resource on-behalf-of customer.
  /// [provisionedByResourceId] Resource Id of azure offering managing this resource on-behalf-of customer.
  const DataCollectionRuleResponseMetadata({
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
      provisionedBy: pulumi.Input.fromValue(map['provisionedBy'] as String),
      provisionedByResourceId: pulumi.Input.fromValue(map['provisionedByResourceId'] as String),
    );
  }
}
