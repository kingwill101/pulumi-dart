// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleConditionSourceIp {
  /// IP address type for Network Load Balancers. Valid values are `ipv4` and `ipv6`.
  final pulumi.Input<String>? ipAddressType;
  /// List of source IP addresses in CIDR format for Application Load Balancers. Both IPv4 and IPv6 addresses can be used. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use `httpHeader` condition instead.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ListenerRuleConditionSourceIp].
  /// [ipAddressType] IP address type for Network Load Balancers. Valid values are `ipv4` and `ipv6`.
  /// [values] List of source IP addresses in CIDR format for Application Load Balancers. Both IPv4 and IPv6 addresses can be used. Wildcards are not supported. Condition is satisfied if the source IP address of the request matches one of the CIDR blocks. Condition is not satisfied by the addresses in the `X-Forwarded-For` header, use `httpHeader` condition instead.
  const ListenerRuleConditionSourceIp({
    this.ipAddressType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'values': ?values,
    };
  }

  factory ListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionSourceIp(
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
