// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SimpleOfficeSite resources.
class SimpleOfficeSiteState {
  /// The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new resource alicloud_ecd_network_package.
  final pulumi.Input<int>? bandwidth;
  /// Cloud Enterprise Network Instance ID.
  final pulumi.Input<String>? cenId;
  /// The cen owner id.
  final pulumi.Input<String>? cenOwnerId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final pulumi.Input<String>? cidrBlock;
  /// Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: `Any`, `Internet`, `VPC`.
  final pulumi.Input<String>? desktopAccessType;
  /// Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  final pulumi.Input<bool>? enableAdminAccess;
  /// Enable Cross-Desktop Access.
  final pulumi.Input<bool>? enableCrossDesktopAccess;
  /// Whether the Open Internet Access Function.
  final pulumi.Input<bool>? enableInternetAccess;
  /// Whether to Enable Multi-Factor Authentication MFA.
  final pulumi.Input<bool>? mfaEnabled;
  /// The office site name.
  final pulumi.Input<String>? officeSiteName;
  /// Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  final pulumi.Input<bool>? ssoEnabled;
  /// Workspace State. Valid Values: `REGISTERED`,`REGISTERING`.
  final pulumi.Input<String>? status;

  /// Creates a new [SimpleOfficeSiteState].
  /// [bandwidth] The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new resource alicloud_ecd_network_package.
  /// [cenId] Cloud Enterprise Network Instance ID.
  /// [cenOwnerId] The cen owner id.
  /// [cidrBlock] Workspace Corresponds to the Security Office Network of IPv4 Segment.
  /// [desktopAccessType] Connect to the Cloud Desktop Allows the Use of the Access Mode of. Valid values: `Any`, `Internet`, `VPC`.
  /// [enableAdminAccess] Whether to Use Cloud Desktop User Empowerment of Local Administrator Permissions.
  /// [enableCrossDesktopAccess] Enable Cross-Desktop Access.
  /// [enableInternetAccess] Whether the Open Internet Access Function.
  /// [mfaEnabled] Whether to Enable Multi-Factor Authentication MFA.
  /// [officeSiteName] The office site name.
  /// [ssoEnabled] Whether to Enable Single Sign-on (SSO) for User-Based SSO.
  /// [status] Workspace State. Valid Values: `REGISTERED`,`REGISTERING`.
  SimpleOfficeSiteState({
    this.bandwidth,
    this.cenId,
    this.cenOwnerId,
    this.cidrBlock,
    this.desktopAccessType,
    this.enableAdminAccess,
    this.enableCrossDesktopAccess,
    this.enableInternetAccess,
    this.mfaEnabled,
    this.officeSiteName,
    this.ssoEnabled,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'cenId': ?cenId,
      'cenOwnerId': ?cenOwnerId,
      'cidrBlock': ?cidrBlock,
      'desktopAccessType': ?desktopAccessType,
      'enableAdminAccess': ?enableAdminAccess,
      'enableCrossDesktopAccess': ?enableCrossDesktopAccess,
      'enableInternetAccess': ?enableInternetAccess,
      'mfaEnabled': ?mfaEnabled,
      'officeSiteName': ?officeSiteName,
      'ssoEnabled': ?ssoEnabled,
      'status': ?status,
    };
  }

  factory SimpleOfficeSiteState.fromMap(Map<String, dynamic> map) {
    return SimpleOfficeSiteState(
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as int).input(),
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      cenOwnerId: map['cenOwnerId'] == null ? null : (map['cenOwnerId']! as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      desktopAccessType: map['desktopAccessType'] == null ? null : (map['desktopAccessType']! as String).input(),
      enableAdminAccess: map['enableAdminAccess'] == null ? null : (map['enableAdminAccess']! as bool).input(),
      enableCrossDesktopAccess: map['enableCrossDesktopAccess'] == null ? null : (map['enableCrossDesktopAccess']! as bool).input(),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : (map['enableInternetAccess']! as bool).input(),
      mfaEnabled: map['mfaEnabled'] == null ? null : (map['mfaEnabled']! as bool).input(),
      officeSiteName: map['officeSiteName'] == null ? null : (map['officeSiteName']! as String).input(),
      ssoEnabled: map['ssoEnabled'] == null ? null : (map['ssoEnabled']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

