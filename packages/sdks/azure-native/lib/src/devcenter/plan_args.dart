// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_devcenter_plan_args_doc}
/// The set of arguments for Plan.
/// {@endtemplate}
/// {@macro pulumi_devcenter_plan_args_doc}
class PlanArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the devcenter plan.
  final pulumi.Input<String>? planName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU for DevCenters created using this definition.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PlanArgs].
  /// [location] The geo-location where the resource lives
  /// [planName] The name of the devcenter plan.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU for DevCenters created using this definition.
  /// [tags] Resource tags.
  PlanArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? planName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'planName': ?planName,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PlanArgs.fromMap(Map<String, dynamic> map) {
    return PlanArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

