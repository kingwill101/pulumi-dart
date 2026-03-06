// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalSecurityIpGroup resources.
class GlobalSecurityIpGroupState {
  /// The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  ///
  /// - The name can contain lowercase letters, digits, and underscores (\_).
  /// - The name must start with a letter and end with a letter or digit.
  /// - The name must be 2 to 120 characters in length.
  final pulumi.Input<String>? globalIpGroupName;
  /// The IP address in the whitelist template.
  ///
  /// &gt; **NOTE:**   Multiple IP addresses are separated by commas (,). You can create up to 1,000 IP addresses or CIDR blocks for all IP whitelists.
  final pulumi.Input<String>? globalIpList;
  /// The region ID of the IP whitelist template.
  final pulumi.Input<String>? regionId;

  /// Creates a new [GlobalSecurityIpGroupState].
  /// [globalIpGroupName] The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  /// [globalIpList] The IP address in the whitelist template.
  /// [regionId] The region ID of the IP whitelist template.
  const GlobalSecurityIpGroupState({
    this.globalIpGroupName,
    this.globalIpList,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalIpGroupName': ?globalIpGroupName,
      'globalIpList': ?globalIpList,
      'regionId': ?regionId,
    };
  }

  factory GlobalSecurityIpGroupState.fromMap(Map<String, dynamic> map) {
    return GlobalSecurityIpGroupState(
      globalIpGroupName: (() { final guardedValue = map['globalIpGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalIpList: (() { final guardedValue = map['globalIpList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

