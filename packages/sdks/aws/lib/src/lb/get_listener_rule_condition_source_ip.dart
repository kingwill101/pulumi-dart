// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleConditionSourceIp {
  /// IP address type for Network Load Balancers.
  final pulumi.Input<String> ipAddressType;
  /// Set of source IP addresses in CIDR format for Application Load Balancers
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetListenerRuleConditionSourceIp].
  /// [ipAddressType] IP address type for Network Load Balancers.
  /// [values] Set of source IP addresses in CIDR format for Application Load Balancers
  const GetListenerRuleConditionSourceIp({
    required this.ipAddressType,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ipAddressType,
      'values': values,
    };
  }

  factory GetListenerRuleConditionSourceIp.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionSourceIp(
      ipAddressType: pulumi.Input.fromValue(map['ipAddressType'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
