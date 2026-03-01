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
  SimpleOfficeSiteArgs({
    int? bandwidth,
    String? cenId,
    String? cenOwnerId,
    required String cidrBlock,
    String? desktopAccessType,
    bool? enableAdminAccess,
    bool? enableCrossDesktopAccess,
    bool? enableInternetAccess,
    bool? mfaEnabled,
    String? officeSiteName,
    bool? ssoEnabled,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      cenOwnerId = pulumi.Input.asOptionalInput<String>(cenOwnerId),
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      desktopAccessType = pulumi.Input.asOptionalInput<String>(desktopAccessType),
      enableAdminAccess = pulumi.Input.asOptionalInput<bool>(enableAdminAccess),
      enableCrossDesktopAccess = pulumi.Input.asOptionalInput<bool>(enableCrossDesktopAccess),
      enableInternetAccess = pulumi.Input.asOptionalInput<bool>(enableInternetAccess),
      mfaEnabled = pulumi.Input.asOptionalInput<bool>(mfaEnabled),
      officeSiteName = pulumi.Input.asOptionalInput<String>(officeSiteName),
      ssoEnabled = pulumi.Input.asOptionalInput<bool>(ssoEnabled);

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
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      cenOwnerId: map['cenOwnerId'] == null ? null : map['cenOwnerId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      desktopAccessType: map['desktopAccessType'] == null ? null : map['desktopAccessType'] as String,
      enableAdminAccess: map['enableAdminAccess'] == null ? null : map['enableAdminAccess'] as bool,
      enableCrossDesktopAccess: map['enableCrossDesktopAccess'] == null ? null : map['enableCrossDesktopAccess'] as bool,
      enableInternetAccess: map['enableInternetAccess'] == null ? null : map['enableInternetAccess'] as bool,
      mfaEnabled: map['mfaEnabled'] == null ? null : map['mfaEnabled'] as bool,
      officeSiteName: map['officeSiteName'] == null ? null : map['officeSiteName'] as String,
      ssoEnabled: map['ssoEnabled'] == null ? null : map['ssoEnabled'] as bool,
    );
  }
}

