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
    this.applicationGroupName,
    required this.applicationGroupType,
    this.description,
    this.friendlyName,
    required this.hostPoolArmPath,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    required this.resourceGroupName,
    this.showInFeed,
    this.sku,
    this.tags,
  });

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
      applicationGroupName: map['applicationGroupName'] == null ? null : (map['applicationGroupName']! as String).input(),
      applicationGroupType: (map['applicationGroupType'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      hostPoolArmPath: (map['hostPoolArmPath'] as String).input(),
      identity: map['identity'] == null ? null : (ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy']! as String).input(),
      plan: map['plan'] == null ? null : (ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      showInFeed: map['showInFeed'] == null ? null : (map['showInFeed']! as bool).input(),
      sku: map['sku'] == null ? null : (ResourceModelWithAllowedPropertySetSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

