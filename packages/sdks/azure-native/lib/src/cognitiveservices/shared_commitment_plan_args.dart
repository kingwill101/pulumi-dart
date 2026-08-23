// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_plan_properties.dart';
import 'sku.dart';

/// {@template pulumi_cognitiveservices_shared_commitment_plan_args_doc}
/// The set of arguments for SharedCommitmentPlan.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_shared_commitment_plan_args_doc}
class SharedCommitmentPlanArgs {
  /// The name of the commitmentPlan associated with the Cognitive Services Account
  final pulumi.Input<String>? commitmentPlanName;
  /// The Kind of the resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Cognitive Services account commitment plan.
  final pulumi.Input<CommitmentPlanProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SharedCommitmentPlanArgs].
  /// [commitmentPlanName] The name of the commitmentPlan associated with the Cognitive Services Account
  /// [kind] The Kind of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Cognitive Services account commitment plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [tags] Resource tags.
  const SharedCommitmentPlanArgs({
    this.commitmentPlanName,
    this.kind,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlanName': ?commitmentPlanName,
      'kind': ?kind,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<CommitmentPlanProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SharedCommitmentPlanArgs.fromMap(Map<String, dynamic> map) {
    return SharedCommitmentPlanArgs(
      commitmentPlanName: (() { final guardedValue = map['commitmentPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommitmentPlanProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
