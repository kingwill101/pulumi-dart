// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_get_local_gateway_args_doc}
/// Arguments for getLocalGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_get_local_gateway_args_doc}
class GetLocalGatewayArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetLocalGatewayFilter>>? filters;

  /// Id of the specific Local Gateway to retrieve.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Current state of the desired Local Gateway.
  /// Can be either `"pending"` or `"available"`.
  final pulumi.Input<String>? state;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired Local Gateway.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Local Gateways in the current region. The given filters must match exactly one
  /// Local Gateway whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayArgs].
  /// [filters] Custom filter block as described below.
  /// [id] Id of the specific Local Gateway to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Current state of the desired Local Gateway.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetLocalGatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetLocalGatewayFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetLocalGatewayFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetLocalGatewayFilter>(
            guardedValue,
            (value) => GetLocalGatewayFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
