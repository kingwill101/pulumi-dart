// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHostedZoneId.
class GetHostedZoneIdArgs3 {
  /// Type of load balancer to create. Possible values are <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span> or <span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span>. The default value is <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>.
  final Input<String>? loadBalancerType;

  /// Name of the Region whose AWS ELB HostedZoneId is desired. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetHostedZoneIdArgs3({
    this.loadBalancerType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loadBalancerTypeValue = loadBalancerType;
    if (loadBalancerTypeValue != null) {
      map['loadBalancerType'] = loadBalancerTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetHostedZoneIdArgs3.fromMap(Map<String, dynamic> map) {
    return GetHostedZoneIdArgs3(
      loadBalancerType: Input.asOptionalInput<String>(map['loadBalancerType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
