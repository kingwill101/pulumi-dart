// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_model_with_allowed_property_set_identity.dart';
import 'resource_model_with_allowed_property_set_plan.dart';
import 'resource_model_with_allowed_property_set_sku.dart';

/// {@template pulumi_desktopvirtualization_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_workspace_args_doc}
class WorkspaceArgs {
  /// List of applicationGroup resource Ids.
  final pulumi.Input<List<String>>? applicationGroupReferences;
  /// Description of Workspace.
  final pulumi.Input<String>? description;
  /// Friendly name of Workspace.
  final pulumi.Input<String>? friendlyName;
  final pulumi.Input<ResourceModelWithAllowedPropertySetIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  final pulumi.Input<ResourceModelWithAllowedPropertySetPlan>? plan;
  /// Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<ResourceModelWithAllowedPropertySetSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceArgs].
  /// [applicationGroupReferences] List of applicationGroup resource Ids.
  /// [description] Description of Workspace.
  /// [friendlyName] Friendly name of Workspace.
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Optional.
  /// [publicNetworkAccess] Enabled allows this resource to be accessed from both public and private networks, Disabled allows this resource to only be accessed via private endpoints
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Optional.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace
  WorkspaceArgs({
    this.applicationGroupReferences,
    this.description,
    this.friendlyName,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupReferences': ?applicationGroupReferences,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      applicationGroupReferences: map['applicationGroupReferences'] == null ? null : ((map['applicationGroupReferences'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName'] as String).input(),
      identity: map['identity'] == null ? null : (ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy'] as String).input(),
      plan: map['plan'] == null ? null : (ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (ResourceModelWithAllowedPropertySetSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workspaceName: map['workspaceName'] == null ? null : (map['workspaceName'] as String).input(),
    );
  }
}

