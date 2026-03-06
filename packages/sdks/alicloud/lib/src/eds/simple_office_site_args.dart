// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_simple_office_site_simple_office_site_args_doc}
/// The set of arguments for SimpleOfficeSite.
/// {@endtemplate}
/// {@macro pulumi_eds_simple_office_site_simple_office_site_args_doc}
class SimpleOfficeSiteArgs {
  /// The Internet Bandwidth Peak. It has been deprecated from version 1.142.0 and can be found in the new resource alicloud_ecd_network_package.
  final pulumi.Input<int>? bandwidth;
  /// Cloud Enterprise Network Instance ID.
  final pulumi.Input<String>? cenId;
  /// The cen owner id.
  final pulumi.Input<String>? cenOwnerId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final pulumi.Input<String> cidrBlock;
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

  /// Creates a new [SimpleOfficeSiteArgs].
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
  const SimpleOfficeSiteArgs({
    this.bandwidth,
    this.cenId,
    this.cenOwnerId,
    required this.cidrBlock,
    this.desktopAccessType,
    this.enableAdminAccess,
    this.enableCrossDesktopAccess,
    this.enableInternetAccess,
    this.mfaEnabled,
    this.officeSiteName,
    this.ssoEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'cenId': ?cenId,
      'cenOwnerId': ?cenOwnerId,
      'cidrBlock': cidrBlock,
      'desktopAccessType': ?desktopAccessType,
      'enableAdminAccess': ?enableAdminAccess,
      'enableCrossDesktopAccess': ?enableCrossDesktopAccess,
      'enableInternetAccess': ?enableInternetAccess,
      'mfaEnabled': ?mfaEnabled,
      'officeSiteName': ?officeSiteName,
      'ssoEnabled': ?ssoEnabled,
    };
  }

  factory SimpleOfficeSiteArgs.fromMap(Map<String, dynamic> map) {
    return SimpleOfficeSiteArgs(
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenOwnerId: (() { final guardedValue = map['cenOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      desktopAccessType: (() { final guardedValue = map['desktopAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAdminAccess: (() { final guardedValue = map['enableAdminAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCrossDesktopAccess: (() { final guardedValue = map['enableCrossDesktopAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableInternetAccess: (() { final guardedValue = map['enableInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mfaEnabled: (() { final guardedValue = map['mfaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      officeSiteName: (() { final guardedValue = map['officeSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssoEnabled: (() { final guardedValue = map['ssoEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

