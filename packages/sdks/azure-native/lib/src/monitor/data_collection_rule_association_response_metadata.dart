// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata about the resource
class DataCollectionRuleAssociationResponseMetadata {
  /// Azure offering managing this resource on-behalf-of customer.
  final pulumi.Input<String> provisionedBy;
  /// Resource Id of azure offering managing this resource on-behalf-of customer.
  final pulumi.Input<String> provisionedByResourceId;

  /// Creates a new [DataCollectionRuleAssociationResponseMetadata].
  /// [provisionedBy] Azure offering managing this resource on-behalf-of customer.
  /// [provisionedByResourceId] Resource Id of azure offering managing this resource on-behalf-of customer.
  DataCollectionRuleAssociationResponseMetadata({
    required this.provisionedBy,
    required this.provisionedByResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedBy': provisionedBy,
      'provisionedByResourceId': provisionedByResourceId,
    };
  }

  factory DataCollectionRuleAssociationResponseMetadata.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleAssociationResponseMetadata(
      provisionedBy: (map['provisionedBy'] as String).input(),
      provisionedByResourceId: (map['provisionedByResourceId'] as String).input(),
    );
  }
}

