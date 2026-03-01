// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_data_collection_rule_association_args_doc}
/// The set of arguments for DataCollectionRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_monitor_data_collection_rule_association_args_doc}
class DataCollectionRuleAssociationArgs {
  /// The name of the association. The name is case insensitive.
  final pulumi.Input<String>? associationName;
  /// The resource ID of the data collection endpoint that is to be associated.
  final pulumi.Input<String>? dataCollectionEndpointId;
  /// The resource ID of the data collection rule that is to be associated.
  final pulumi.Input<String>? dataCollectionRuleId;
  /// Description of the association.
  final pulumi.Input<String>? description;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [DataCollectionRuleAssociationArgs].
  /// [associationName] The name of the association. The name is case insensitive.
  /// [dataCollectionEndpointId] The resource ID of the data collection endpoint that is to be associated.
  /// [dataCollectionRuleId] The resource ID of the data collection rule that is to be associated.
  /// [description] Description of the association.
  /// [resourceUri] The identifier of the resource.
  DataCollectionRuleAssociationArgs({
    String? associationName,
    String? dataCollectionEndpointId,
    String? dataCollectionRuleId,
    String? description,
    required String resourceUri,
  }) :
      associationName = pulumi.Input.asOptionalInput<String>(associationName),
      dataCollectionEndpointId = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointId),
      dataCollectionRuleId = pulumi.Input.asOptionalInput<String>(dataCollectionRuleId),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': ?associationName,
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataCollectionRuleId': ?dataCollectionRuleId,
      'description': ?description,
      'resourceUri': resourceUri,
    };
  }

  factory DataCollectionRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleAssociationArgs(
      associationName: map['associationName'] == null ? null : map['associationName'] as String,
      dataCollectionEndpointId: map['dataCollectionEndpointId'] == null ? null : map['dataCollectionEndpointId'] as String,
      dataCollectionRuleId: map['dataCollectionRuleId'] == null ? null : map['dataCollectionRuleId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      resourceUri: map['resourceUri'] as String,
    );
  }
}

