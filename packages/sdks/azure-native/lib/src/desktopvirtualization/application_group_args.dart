// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_model_with_allowed_property_set_identity.dart';
import 'resource_model_with_allowed_property_set_plan.dart';
import 'resource_model_with_allowed_property_set_sku.dart';

/// {@template pulumi_desktopvirtualization_application_group_args_doc}
/// The set of arguments for ApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_application_group_args_doc}
class ApplicationGroupArgs {
  /// The name of the application group
  final pulumi.Input<String>? applicationGroupName;
  /// Resource Type of ApplicationGroup.
  final pulumi.Input<String> applicationGroupType;
  /// Description of ApplicationGroup.
  final pulumi.Input<String>? description;
  /// Friendly name of ApplicationGroup.
  final pulumi.Input<String>? friendlyName;
  /// HostPool arm path of ApplicationGroup.
  final pulumi.Input<String> hostPoolArmPath;
  final pulumi.Input<ResourceModelWithAllowedPropertySetIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final pulumi.Input<String>? managedBy;
  final pulumi.Input<ResourceModelWithAllowedPropertySetPlan>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Boolean representing whether the applicationGroup is show in the feed.
  final pulumi.Input<bool>? showInFeed;
  final pulumi.Input<ResourceModelWithAllowedPropertySetSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationGroupArgs].
  /// [applicationGroupName] The name of the application group
  /// [applicationGroupType] Resource Type of ApplicationGroup.
  /// [description] Description of ApplicationGroup.
  /// [friendlyName] Friendly name of ApplicationGroup.
  /// [hostPoolArmPath] HostPool arm path of ApplicationGroup.
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [showInFeed] Boolean representing whether the applicationGroup is show in the feed.
  /// [sku] Optional.
  /// [tags] Resource tags.
  ApplicationGroupArgs({
    pulumi.Output<String>? applicationGroupName,
    required pulumi.Output<String> applicationGroupType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? friendlyName,
    required pulumi.Output<String> hostPoolArmPath,
    pulumi.Output<ResourceModelWithAllowedPropertySetIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<ResourceModelWithAllowedPropertySetPlan>? plan,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? showInFeed,
    pulumi.Output<ResourceModelWithAllowedPropertySetSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationGroupName = pulumi.Input.asOptionalInput<String>(applicationGroupName),
      applicationGroupType = pulumi.Input.asInput<String>(applicationGroupType),
      description = pulumi.Input.asOptionalInput<String>(description),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostPoolArmPath = pulumi.Input.asInput<String>(hostPoolArmPath),
      identity = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      showInFeed = pulumi.Input.asOptionalInput<bool>(showInFeed),
      sku = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': ?applicationGroupName,
      'applicationGroupType': applicationGroupType,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'hostPoolArmPath': hostPoolArmPath,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'showInFeed': ?showInFeed,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupArgs(
      applicationGroupName: map['applicationGroupName'] == null ? null : pulumi.Output.create<String>(map['applicationGroupName'] as String),
      applicationGroupType: pulumi.Output.create<String>(map['applicationGroupType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostPoolArmPath: pulumi.Output.create<String>(map['hostPoolArmPath'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetIdentity>(ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetPlan>(ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      showInFeed: map['showInFeed'] == null ? null : pulumi.Output.create<bool>(map['showInFeed'] as bool),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetSku>(ResourceModelWithAllowedPropertySetSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

