// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getService.
class GetServiceArgs2 {
  /// DNS name of the service (_e.g.,_ `rds.us-east-1.amazonaws.com`). One of <span pulumi-lang-nodejs="`dnsName`" pulumi-lang-dotnet="`DnsName`" pulumi-lang-go="`dnsName`" pulumi-lang-python="`dns_name`" pulumi-lang-yaml="`dnsName`" pulumi-lang-java="`dnsName`">`dns_name`</span>, <span pulumi-lang-nodejs="`reverseDnsName`" pulumi-lang-dotnet="`ReverseDnsName`" pulumi-lang-go="`reverseDnsName`" pulumi-lang-python="`reverse_dns_name`" pulumi-lang-yaml="`reverseDnsName`" pulumi-lang-java="`reverseDnsName`">`reverse_dns_name`</span>, or <span pulumi-lang-nodejs="`serviceId`" pulumi-lang-dotnet="`ServiceId`" pulumi-lang-go="`serviceId`" pulumi-lang-python="`service_id`" pulumi-lang-yaml="`serviceId`" pulumi-lang-java="`serviceId`">`service_id`</span> is required.
  final Input<String>? dnsName;
  final Input<String>? id;

  /// Region of the service (_e.g.,_ `us-west-2`, `ap-northeast-1`). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Reverse DNS name of the service (_e.g.,_ `com.amazonaws.us-west-2.s3`). One of <span pulumi-lang-nodejs="`dnsName`" pulumi-lang-dotnet="`DnsName`" pulumi-lang-go="`dnsName`" pulumi-lang-python="`dns_name`" pulumi-lang-yaml="`dnsName`" pulumi-lang-java="`dnsName`">`dns_name`</span>, <span pulumi-lang-nodejs="`reverseDnsName`" pulumi-lang-dotnet="`ReverseDnsName`" pulumi-lang-go="`reverseDnsName`" pulumi-lang-python="`reverse_dns_name`" pulumi-lang-yaml="`reverseDnsName`" pulumi-lang-java="`reverseDnsName`">`reverse_dns_name`</span>, or <span pulumi-lang-nodejs="`serviceId`" pulumi-lang-dotnet="`ServiceId`" pulumi-lang-go="`serviceId`" pulumi-lang-python="`service_id`" pulumi-lang-yaml="`serviceId`" pulumi-lang-java="`serviceId`">`service_id`</span> is required.
  final Input<String>? reverseDnsName;

  /// Prefix of the service (_e.g.,_ `com.amazonaws` in AWS Commercial, `cn.com.amazonaws` in AWS China).
  final Input<String>? reverseDnsPrefix;

  /// Service endpoint ID (_e.g.,_ <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>, <span pulumi-lang-nodejs="`rds`" pulumi-lang-dotnet="`Rds`" pulumi-lang-go="`rds`" pulumi-lang-python="`rds`" pulumi-lang-yaml="`rds`" pulumi-lang-java="`rds`">`rds`</span>, <span pulumi-lang-nodejs="`ec2`" pulumi-lang-dotnet="`Ec2`" pulumi-lang-go="`ec2`" pulumi-lang-python="`ec2`" pulumi-lang-yaml="`ec2`" pulumi-lang-java="`ec2`">`ec2`</span>). One of <span pulumi-lang-nodejs="`dnsName`" pulumi-lang-dotnet="`DnsName`" pulumi-lang-go="`dnsName`" pulumi-lang-python="`dns_name`" pulumi-lang-yaml="`dnsName`" pulumi-lang-java="`dnsName`">`dns_name`</span>, <span pulumi-lang-nodejs="`reverseDnsName`" pulumi-lang-dotnet="`ReverseDnsName`" pulumi-lang-go="`reverseDnsName`" pulumi-lang-python="`reverse_dns_name`" pulumi-lang-yaml="`reverseDnsName`" pulumi-lang-java="`reverseDnsName`">`reverse_dns_name`</span>, or <span pulumi-lang-nodejs="`serviceId`" pulumi-lang-dotnet="`ServiceId`" pulumi-lang-go="`serviceId`" pulumi-lang-python="`service_id`" pulumi-lang-yaml="`serviceId`" pulumi-lang-java="`serviceId`">`service_id`</span> is required. A service's endpoint ID can be found in the [_AWS General Reference_](https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html).
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
