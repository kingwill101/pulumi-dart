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
  /// > **NOTE:**   Multiple IP addresses are separated by commas (,). You can create up to 1,000 IP addresses or CIDR blocks for all IP whitelists.
  final pulumi.Input<String>? globalIpList;
  /// The region ID of the IP whitelist template.
  final pulumi.Input<String>? regionId;

  /// Creates a new [GlobalSecurityIpGroupState].
  /// [globalIpGroupName] The name of the IP whitelist template. The name of the IP whitelist template must meet the following requirements:
  /// [globalIpList] The IP address in the whitelist template.
  /// [regionId] The region ID of the IP whitelist template.
  GlobalSecurityIpGroupState({
    pulumi.Output<String>? globalIpGroupName,
    pulumi.Output<String>? globalIpList,
    pulumi.Output<String>? regionId,
  }) :
      globalIpGroupName = pulumi.Input.asOptionalInput<String>(globalIpGroupName),
      globalIpList = pulumi.Input.asOptionalInput<String>(globalIpList),
      regionId = pulumi.Input.asOptionalInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalIpGroupName': ?globalIpGroupName,
      'globalIpList': ?globalIpList,
      'regionId': ?regionId,
    };
  }

  factory GlobalSecurityIpGroupState.fromMap(Map<String, dynamic> map) {
    return GlobalSecurityIpGroupState(
      globalIpGroupName: map['globalIpGroupName'] == null ? null : pulumi.Output.create<String>(map['globalIpGroupName'] as String),
      globalIpList: map['globalIpList'] == null ? null : pulumi.Output.create<String>(map['globalIpList'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

