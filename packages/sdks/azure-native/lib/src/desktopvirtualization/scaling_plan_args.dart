// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_model_with_allowed_property_set_identity.dart';
import 'resource_model_with_allowed_property_set_plan.dart';
import 'resource_model_with_allowed_property_set_sku.dart';
import 'scaling_host_pool_reference.dart';
import 'scaling_schedule.dart';

/// {@template pulumi_desktopvirtualization_scaling_plan_args_doc}
/// The set of arguments for ScalingPlan.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_scaling_plan_args_doc}
class ScalingPlanArgs {
  /// Description of scaling plan.
  final pulumi.Input<String>? description;
  /// Exclusion tag for scaling plan.
  final pulumi.Input<String>? exclusionTag;
  /// User friendly name of scaling plan.
  final pulumi.Input<String>? friendlyName;
  /// List of ScalingHostPoolReference definitions.
  final pulumi.Input<List<ScalingHostPoolReference>>? hostPoolReferences;
  /// HostPool type for desktop.
  final pulumi.Input<String>? hostPoolType;
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
  /// The name of the scaling plan.
  final pulumi.Input<String>? scalingPlanName;
  /// List of ScalingPlanPooledSchedule definitions.
  final pulumi.Input<List<ScalingSchedule>>? schedules;
  final pulumi.Input<ResourceModelWithAllowedPropertySetSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Timezone of the scaling plan.
  final pulumi.Input<String> timeZone;

  /// Creates a new [ScalingPlanArgs].
  /// [description] Description of scaling plan.
  /// [exclusionTag] Exclusion tag for scaling plan.
  /// [friendlyName] User friendly name of scaling plan.
  /// [hostPoolReferences] List of ScalingHostPoolReference definitions.
  /// [hostPoolType] HostPool type for desktop.
  /// [identity] Optional.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [plan] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scalingPlanName] The name of the scaling plan.
  /// [schedules] List of ScalingPlanPooledSchedule definitions.
  /// [sku] Optional.
  /// [tags] Resource tags.
  /// [timeZone] Timezone of the scaling plan.
  ScalingPlanArgs({
    this.description,
    this.exclusionTag,
    this.friendlyName,
    this.hostPoolReferences,
    this.hostPoolType,
    this.identity,
    this.kind,
    this.location,
    this.managedBy,
    this.plan,
    required this.resourceGroupName,
    this.scalingPlanName,
    this.schedules,
    this.sku,
    this.tags,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exclusionTag': ?exclusionTag,
      'friendlyName': ?friendlyName,
      'hostPoolReferences': ?pulumi.Input.mapOptionalInputValue<List<ScalingHostPoolReference>, List<Map<String, dynamic>>>(hostPoolReferences, (value) => pulumi.Input.encodeList<ScalingHostPoolReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostPoolType': ?hostPoolType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'plan': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scalingPlanName': ?scalingPlanName,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<ScalingSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<ScalingSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceModelWithAllowedPropertySetSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'timeZone': timeZone,
    };
  }

  factory ScalingPlanArgs.fromMap(Map<String, dynamic> map) {
    return ScalingPlanArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      exclusionTag: map['exclusionTag'] == null ? null : (map['exclusionTag']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      hostPoolReferences: map['hostPoolReferences'] == null ? null : (pulumi.Input.decodeList<ScalingHostPoolReference>(map['hostPoolReferences']!, (value) => ScalingHostPoolReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hostPoolType: map['hostPoolType'] == null ? null : (map['hostPoolType']! as String).input(),
      identity: map['identity'] == null ? null : (ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managedBy: map['managedBy'] == null ? null : (map['managedBy']! as String).input(),
      plan: map['plan'] == null ? null : (ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scalingPlanName: map['scalingPlanName'] == null ? null : (map['scalingPlanName']! as String).input(),
      schedules: map['schedules'] == null ? null : (pulumi.Input.decodeList<ScalingSchedule>(map['schedules']!, (value) => ScalingSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (ResourceModelWithAllowedPropertySetSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeZone: (map['timeZone'] as String).input(),
    );
  }
}

