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
    pulumi.Output<List<String>>? applicationGroupReferences,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<ResourceModelWithAllowedPropertySetIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<ResourceModelWithAllowedPropertySetPlan>? plan,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceModelWithAllowedPropertySetSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceName,
  }) :
      applicationGroupReferences = pulumi.Input.asOptionalInput<List<String>>(applicationGroupReferences),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      identity = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetPlan>(plan),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

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
      applicationGroupReferences: map['applicationGroupReferences'] == null ? null : pulumi.Output.create<List<String>>((map['applicationGroupReferences'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetIdentity>(ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetPlan>(ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetSku>(ResourceModelWithAllowedPropertySetSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

