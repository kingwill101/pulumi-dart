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
  const DataCollectionRuleAssociationArgs({
    this.associationName,
    this.dataCollectionEndpointId,
    this.dataCollectionRuleId,
    this.description,
    required this.resourceUri,
  });

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
      associationName: (() { final guardedValue = map['associationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionRuleId: (() { final guardedValue = map['dataCollectionRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
