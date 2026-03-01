// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_flavor_v2_get_flavor_v2_args_doc}
/// Arguments for getFlavorV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_flavor_v2_get_flavor_v2_args_doc}
class GetFlavorV2Args {
  /// The ID of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  final pulumi.Input<String>? flavorId;
  /// The name of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Load Balancer client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFlavorV2Args].
  /// [flavorId] The ID of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  /// [name] The name of the flavor. Exactly one of `name`, `flavor_id` is required to be set.
  /// [region] The region in which to obtain the V2 Load Balancer client.
  GetFlavorV2Args({
    String? flavorId,
    String? name,
    String? region,
  }) :
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flavorId': ?flavorId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetFlavorV2Args.fromMap(Map<String, dynamic> map) {
    return GetFlavorV2Args(
      flavorId: map['flavorId'] == null ? null : map['flavorId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

