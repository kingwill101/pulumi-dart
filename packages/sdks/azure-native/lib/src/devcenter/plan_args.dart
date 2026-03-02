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
    this.location,
    this.planName,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

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
      location: map['location'] == null ? null : (map['location']! as String).input(),
      planName: map['planName'] == null ? null : (map['planName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

