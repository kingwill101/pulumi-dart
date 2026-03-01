// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_data_collection_rule_association_args_doc}
/// Arguments for getDataCollectionRuleAssociation.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_data_collection_rule_association_args_doc}
class GetDataCollectionRuleAssociationArgs {
  /// The name of the association. The name is case insensitive.
  final pulumi.Input<String> associationName;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetDataCollectionRuleAssociationArgs].
  /// [associationName] The name of the association. The name is case insensitive.
  /// [resourceUri] The identifier of the resource.
  GetDataCollectionRuleAssociationArgs({
    required pulumi.Output<String> associationName,
    required pulumi.Output<String> resourceUri,
  }) :
      associationName = pulumi.Input.asInput<String>(associationName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationName': associationName,
      'resourceUri': resourceUri,
    };
  }

  factory GetDataCollectionRuleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleAssociationArgs(
      associationName: pulumi.Output.create<String>(map['associationName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

