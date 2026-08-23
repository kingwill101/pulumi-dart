// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_routes_route.dart';

/// {@template pulumi_s3_control_multi_region_access_point_routes_multi_region_access_point_routes_args_doc}
/// The set of arguments for MultiRegionAccessPointRoutes.
/// {@endtemplate}
/// {@macro pulumi_s3_control_multi_region_access_point_routes_multi_region_access_point_routes_args_doc}
class MultiRegionAccessPointRoutesArgs {
  /// AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? accountId;
  /// ARN of the Multi-Region Access Point.
  final pulumi.Input<String> mrap;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Route configurations. At least one route must have a `trafficDialPercentage` of `100`. See `route` below.
  final pulumi.Input<List<MultiRegionAccessPointRoutesRoute>> routes;

  /// Creates a new [MultiRegionAccessPointRoutesArgs].
  /// [accountId] AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [mrap] ARN of the Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routes] Route configurations. At least one route must have a `trafficDialPercentage` of `100`. See `route` below.
  const MultiRegionAccessPointRoutesArgs({
    this.accountId,
    required this.mrap,
    this.region,
    required this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'mrap': mrap,
      'region': ?region,
      'routes': pulumi.Input.mapInputValue<List<MultiRegionAccessPointRoutesRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<MultiRegionAccessPointRoutesRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MultiRegionAccessPointRoutesArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointRoutesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mrap: pulumi.Input.fromValue(map['mrap'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: pulumi.Input.fromValue(pulumi.Input.decodeList<MultiRegionAccessPointRoutesRoute>(map['routes']!, (value) => MultiRegionAccessPointRoutesRoute.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
