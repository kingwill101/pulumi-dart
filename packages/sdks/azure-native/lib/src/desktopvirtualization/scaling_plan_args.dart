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
    pulumi.Output<String>? description,
    pulumi.Output<String>? exclusionTag,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<List<ScalingHostPoolReference>>? hostPoolReferences,
    pulumi.Output<String>? hostPoolType,
    pulumi.Output<ResourceModelWithAllowedPropertySetIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedBy,
    pulumi.Output<ResourceModelWithAllowedPropertySetPlan>? plan,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scalingPlanName,
    pulumi.Output<List<ScalingSchedule>>? schedules,
    pulumi.Output<ResourceModelWithAllowedPropertySetSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> timeZone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      exclusionTag = pulumi.Input.asOptionalInput<String>(exclusionTag),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostPoolReferences = pulumi.Input.asOptionalInput<List<ScalingHostPoolReference>>(hostPoolReferences),
      hostPoolType = pulumi.Input.asOptionalInput<String>(hostPoolType),
      identity = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      plan = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scalingPlanName = pulumi.Input.asOptionalInput<String>(scalingPlanName),
      schedules = pulumi.Input.asOptionalInput<List<ScalingSchedule>>(schedules),
      sku = pulumi.Input.asOptionalInput<ResourceModelWithAllowedPropertySetSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asInput<String>(timeZone);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exclusionTag: map['exclusionTag'] == null ? null : pulumi.Output.create<String>(map['exclusionTag'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostPoolReferences: map['hostPoolReferences'] == null ? null : pulumi.Output.create<List<ScalingHostPoolReference>>(pulumi.Input.decodeList<ScalingHostPoolReference>(map['hostPoolReferences'], (value) => ScalingHostPoolReference.fromMap((value as Map).cast<String, dynamic>()))),
      hostPoolType: map['hostPoolType'] == null ? null : pulumi.Output.create<String>(map['hostPoolType'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetIdentity>(ResourceModelWithAllowedPropertySetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetPlan>(ResourceModelWithAllowedPropertySetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scalingPlanName: map['scalingPlanName'] == null ? null : pulumi.Output.create<String>(map['scalingPlanName'] as String),
      schedules: map['schedules'] == null ? null : pulumi.Output.create<List<ScalingSchedule>>(pulumi.Input.decodeList<ScalingSchedule>(map['schedules'], (value) => ScalingSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceModelWithAllowedPropertySetSku>(ResourceModelWithAllowedPropertySetSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeZone: pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

