// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getService.
class GetServiceArgs2 {
  /// DNS name of the service (_e.g.,_ `rds.us-east-1.amazonaws.com`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  final Input<String>? dnsName;
  final Input<String>? id;

  /// Region of the service (_e.g.,_ `us-west-2`, `ap-northeast-1`). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Reverse DNS name of the service (_e.g.,_ `com.amazonaws.us-west-2.s3`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required.
  final Input<String>? reverseDnsName;

  /// Prefix of the service (_e.g.,_ `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  final Input<String>? reverseDnsPrefix;

  /// Service endpoint ID (_e.g.,_ `s3`, `rds`, `ec2`). One of `dns_name`, `reverse_dns_name`, or `service_id` is required. A service's endpoint ID can be found in the [_AWS General Reference_](https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html).
  final Input<String>? serviceId;

  GetServiceArgs2({
    this.dnsName,
    this.id,
    this.region,
    this.reverseDnsName,
    this.reverseDnsPrefix,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reverseDnsNameValue = reverseDnsName;
    if (reverseDnsNameValue != null) {
      map['reverseDnsName'] = reverseDnsNameValue;
    }
    final reverseDnsPrefixValue = reverseDnsPrefix;
    if (reverseDnsPrefixValue != null) {
      map['reverseDnsPrefix'] = reverseDnsPrefixValue;
    }
    final serviceIdValue = serviceId;
    if (serviceIdValue != null) {
      map['serviceId'] = serviceIdValue;
    }
    return map;
  }

  factory GetServiceArgs2.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs2(
      dnsName: Input.asOptionalInput<String>(map['dnsName']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      reverseDnsName: Input.asOptionalInput<String>(map['reverseDnsName']),
      reverseDnsPrefix: Input.asOptionalInput<String>(map['reverseDnsPrefix']),
      serviceId: Input.asOptionalInput<String>(map['serviceId']),
    );
  }
}
