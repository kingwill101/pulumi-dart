// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateways_filter.dart';

/// {@template pulumi_ec2_get_local_gateways_get_local_gateways_args_doc}
/// Arguments for getLocalGateways.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateways_get_local_gateways_args_doc}
class GetLocalGatewaysArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetLocalGatewaysFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired local_gateways.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewaysArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetLocalGatewaysArgs({
    pulumi.Output<List<GetLocalGatewaysFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLocalGatewaysFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocalGatewaysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocalGatewaysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewaysArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetLocalGatewaysFilter>>(pulumi.Input.decodeList<GetLocalGatewaysFilter>(map['filters'], (value) => GetLocalGatewaysFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

