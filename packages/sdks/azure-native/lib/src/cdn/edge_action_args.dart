// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_type.dart';

/// {@template pulumi_cdn_edge_action_args_doc}
/// The set of arguments for EdgeAction.
/// {@endtemplate}
/// {@macro pulumi_cdn_edge_action_args_doc}
class EdgeActionArgs {
  /// The name of the Edge Action
  final pulumi.Input<String>? edgeActionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The sku type of the edge action
  final pulumi.Input<SkuType> sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EdgeActionArgs].
  /// [edgeActionName] The name of the Edge Action
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The sku type of the edge action
  /// [tags] Resource tags.
  EdgeActionArgs({
    pulumi.Output<String>? edgeActionName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<SkuType> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      edgeActionName = pulumi.Input.asOptionalInput<String>(edgeActionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<SkuType>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      edgeActionName: map['edgeActionName'] == null ? null : pulumi.Output.create<String>(map['edgeActionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<SkuType>(SkuType.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

