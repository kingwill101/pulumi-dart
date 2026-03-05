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
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayConnectId,
  });

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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectFilter>(guardedValue, (value) => GetConnectFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayConnectId: (() { final guardedValue = map['transitGatewayConnectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

