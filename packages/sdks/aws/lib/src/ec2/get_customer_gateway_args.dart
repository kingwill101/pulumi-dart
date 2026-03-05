// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_gateway_filter.dart';

/// {@template pulumi_ec2_get_customer_gateway_get_customer_gateway_args_doc}
/// Arguments for getCustomerGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_customer_gateway_get_customer_gateway_args_doc}
class GetCustomerGatewayArgs {
  /// One or more [name-value pairs][dcg-filters] to filter by.
  ///
  /// [dcg-filters]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCustomerGateways.html
  final pulumi.Input<List<GetCustomerGatewayFilter>>? filters;
  /// ID of the gateway.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of key-value pairs assigned to the gateway.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCustomerGatewayArgs].
  /// [filters] One or more [name-value pairs][dcg-filters] to filter by.
  /// [id] ID of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value pairs assigned to the gateway.
  GetCustomerGatewayArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetCustomerGatewayFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetCustomerGatewayFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetCustomerGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewayArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomerGatewayFilter>(guardedValue, (value) => GetCustomerGatewayFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

