// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_index_get_service_get_service_args_doc}
class GetServiceArgs {
  /// DNS name of the service (_e.g.,_ `rds.us-east-1.amazonaws.com`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  final pulumi.Input<String>? dnsName;
  final pulumi.Input<String>? id;

  /// Region of the service (_e.g.,_ `us-west-2`, `ap-northeast-1`). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Reverse DNS name of the service (_e.g.,_ `com.amazonaws.us-west-2.s3`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  final pulumi.Input<String>? reverseDnsName;

  /// Prefix of the service (_e.g.,_ `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  final pulumi.Input<String>? reverseDnsPrefix;

  /// Service endpoint ID (_e.g.,_ `s3`, `rds`, `ec2`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required. A service's endpoint ID can be found in the [_AWS General Reference_](https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html).
  final pulumi.Input<String>? serviceId;

  /// Creates a new [GetServiceArgs].
  /// [dnsName] DNS name of the service (_e.g.,_ `rds.us-east-1.amazonaws.com`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  /// [id] Optional.
  /// [region] Region of the service (_e.g.,_ `us-west-2`, `ap-northeast-1`). Defaults to the Region set in the provider configuration.
  /// [reverseDnsName] Reverse DNS name of the service (_e.g.,_ `com.amazonaws.us-west-2.s3`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  /// [reverseDnsPrefix] Prefix of the service (_e.g.,_ `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  /// [serviceId] Service endpoint ID (_e.g.,_ `s3`, `rds`, `ec2`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required. A service's endpoint ID can be found in the [_AWS General Reference_](https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html).
  GetServiceArgs({
    String? dnsName,
    String? id,
    String? region,
    String? reverseDnsName,
    String? reverseDnsPrefix,
    String? serviceId,
  }) : dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
       id = pulumi.Input.asOptionalInput<String>(id),
       region = pulumi.Input.asOptionalInput<String>(region),
       reverseDnsName = pulumi.Input.asOptionalInput<String>(reverseDnsName),
       reverseDnsPrefix = pulumi.Input.asOptionalInput<String>(
         reverseDnsPrefix,
       ),
       serviceId = pulumi.Input.asOptionalInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'id': ?id,
      'region': ?region,
      'reverseDnsName': ?reverseDnsName,
      'reverseDnsPrefix': ?reverseDnsPrefix,
      'serviceId': ?serviceId,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      reverseDnsName: map['reverseDnsName'] == null
          ? null
          : map['reverseDnsName'] as String,
      reverseDnsPrefix: map['reverseDnsPrefix'] == null
          ? null
          : map['reverseDnsPrefix'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}
