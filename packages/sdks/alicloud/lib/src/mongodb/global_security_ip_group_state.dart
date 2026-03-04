// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalSecurityIpGroup resources.
class GlobalSecurityIpGroupState {
  /// The name of the IP whitelist template.
  final pulumi.Input<String>? globalIgName;

  /// The IP address in the whitelist template.
  ///
  /// &gt; **NOTE:** Separate multiple IP addresses with commas (,). You can create up to 1000 IP addresses or CIDR blocks for all IP address whitelists.
  final pulumi.Input<String>? globalSecurityIpList;

  /// The region ID of the resource
  final pulumi.Input<String>? regionId;

  /// Creates a new [GlobalSecurityIpGroupState].
  /// [globalIgName] The name of the IP whitelist template.
  /// [globalSecurityIpList] The IP address in the whitelist template.
  /// [regionId] The region ID of the resource
  GlobalSecurityIpGroupState({
    this.globalIgName,
    this.globalSecurityIpList,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalIgName': ?globalIgName,
      'globalSecurityIpList': ?globalSecurityIpList,
      'regionId': ?regionId,
    };
  }

  factory GlobalSecurityIpGroupState.fromMap(Map<String, dynamic> map) {
    return GlobalSecurityIpGroupState(
      globalIgName: (() {
        final guardedValue = map['globalIgName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      globalSecurityIpList: (() {
        final guardedValue = map['globalSecurityIpList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
