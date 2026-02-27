// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_local_gateway_filter/get_local_gateway_filter.dart';

/// Arguments for getLocalGateway.
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

  GetLocalGatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetLocalGatewayFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetLocalGatewayFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLocalGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayArgs(
      filters: pulumi.Input.asOptionalInput<List<GetLocalGatewayFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
