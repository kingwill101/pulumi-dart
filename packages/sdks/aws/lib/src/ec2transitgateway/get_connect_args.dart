// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_filter.dart';

/// {@template pulumi_ec2transitgateway_get_connect_get_connect_args_doc}
/// Arguments for getConnect.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_connect_get_connect_args_doc}
class GetConnectArgs {
  /// One or more configuration blocks containing name-values filters. Detailed below.
  final pulumi.Input<List<GetConnectFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the EC2 Transit Gateway Connect.
  final pulumi.Input<String>? transitGatewayConnectId;

  /// Creates a new [GetConnectArgs].
  /// [filters] One or more configuration blocks containing name-values filters. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect
  /// [transitGatewayConnectId] Identifier of the EC2 Transit Gateway Connect.
  GetConnectArgs({
    pulumi.Output<List<GetConnectFilter>>? filters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitGatewayConnectId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetConnectFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitGatewayConnectId = pulumi.Input.asOptionalInput<String>(transitGatewayConnectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetConnectFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetConnectFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayConnectId': ?transitGatewayConnectId,
    };
  }

  factory GetConnectArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetConnectFilter>>(pulumi.Input.decodeList<GetConnectFilter>(map['filters'], (value) => GetConnectFilter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitGatewayConnectId: map['transitGatewayConnectId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayConnectId'] as String),
    );
  }
}

