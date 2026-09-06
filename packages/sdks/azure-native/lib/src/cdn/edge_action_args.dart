// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_type.dart';

/// {@template pulumi_cdn_edge_action_args_doc}
/// The set of arguments for EdgeAction.
/// {@endtemplate}
/// {@macro pulumi_cdn_edge_action_args_doc}
class EdgeActionArgs {
  /// The name of the Edge Action
  final pulumi.Input<String?>? edgeActionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The sku type of the edge action
  final pulumi.Input<SkuType> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EdgeActionArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku type of the edge action
  /// [tags] Resource tags.
  const EdgeActionArgs({
    this.edgeActionName,
    this.location,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeActionName': ?edgeActionName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<SkuType, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory EdgeActionArgs.fromMap(Map<String, dynamic> map) {
    return EdgeActionArgs(
      edgeActionName: (() { final guardedValue = map['edgeActionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(SkuType.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
