// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_hunt_relation_args_doc}
/// The set of arguments for HuntRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_hunt_relation_args_doc}
class HuntRelationArgs {
  /// The hunt id (GUID)
  final pulumi.Input<String> huntId;
  /// The hunt relation id (GUID)
  final pulumi.Input<String>? huntRelationId;
  /// List of labels relevant to this hunt
  final pulumi.Input<List<String>>? labels;
  /// The id of the related resource
  final pulumi.Input<String> relatedResourceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [HuntRelationArgs].
  /// [huntId] The hunt id (GUID)
  /// [huntRelationId] The hunt relation id (GUID)
  /// [labels] List of labels relevant to this hunt
  /// [relatedResourceId] The id of the related resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  HuntRelationArgs({
    required String huntId,
    String? huntRelationId,
    List<String>? labels,
    required String relatedResourceId,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      huntId = pulumi.Input.asInput<String>(huntId),
      huntRelationId = pulumi.Input.asOptionalInput<String>(huntRelationId),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      relatedResourceId = pulumi.Input.asInput<String>(relatedResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'huntId': huntId,
      'huntRelationId': ?huntRelationId,
      'labels': ?labels,
      'relatedResourceId': relatedResourceId,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory HuntRelationArgs.fromMap(Map<String, dynamic> map) {
    return HuntRelationArgs(
      huntId: map['huntId'] as String,
      huntRelationId: map['huntRelationId'] == null ? null : map['huntRelationId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      relatedResourceId: map['relatedResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

