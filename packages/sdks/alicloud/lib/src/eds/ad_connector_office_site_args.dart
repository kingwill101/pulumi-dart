// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_ad_connector_office_site_ad_connector_office_site_args_doc}
/// The set of arguments for AdConnectorOfficeSite.
/// {@endtemplate}
/// {@macro pulumi_eds_ad_connector_office_site_ad_connector_office_site_args_doc}
class AdConnectorOfficeSiteArgs {
  /// The name of the workspace. The name must be 2 to 255 characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain digits, colons (:), underscores (_), and hyphens (-).
  final pulumi.Input<String> adConnectorOfficeSiteName;
  /// The ad hostname.
  final pulumi.Input<String>? adHostname;
  /// The maximum public bandwidth value. Valid values: 0 to 200. If you do not specify this parameter or you set this parameter to 0, Internet access is disabled.
  final pulumi.Input<int>? bandwidth;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The cen owner id.
  final pulumi.Input<String>? cenOwnerId;
  /// Workspace Corresponds to the Security Office Network of IPv4 Segment.
  final pulumi.Input<String> cidrBlock;
  /// The method that you use to connect to cloud desktops. **Note:** The VPC connection method is provided by Alibaba Cloud PrivateLink. You are not charged for PrivateLink. When you set this parameter to VPC or Any, PrivateLink is automatically activated. Default value: `INTERNET`. Valid values:
  /// - `INTERNET`: connects clients to cloud desktops only over the Internet.
  /// - `VPC`: connects clients to cloud desktops only over a VPC.
  /// - `ANY`: connects clients to cloud desktops over the Internet or a VPC. You can select a connection method when you use a client to connect to the cloud desktop.
  final pulumi.Input<String>? desktopAccessType;
  /// The IP address N of the DNS server of the enterprise AD system. You can specify only one IP address.
  final pulumi.Input<List<String>> dnsAddresses;
  /// The domain name of the enterprise AD system. You can register each domain name only once.
  final pulumi.Input<String> domainName;
  /// The password of the domain administrator. The password can be up to 64 characters in length.
  final pulumi.Input<String>? domainPassword;
  /// The username of the domain administrator. The username can be up to 64 characters in length.
  final pulumi.Input<String>? domainUserName;
  /// Specifies whether to grant the permissions of the local administrator to the desktop users. Default value: true.
  final pulumi.Input<bool>? enableAdminAccess;
  /// Specifies whether to enable Internet access.
  final pulumi.Input<bool>? enableInternetAccess;
  /// Specifies whether to enable multi-factor authentication (MFA).
  final pulumi.Input<bool>? mfaEnabled;
  /// The protocol type. Valid values: `ASP`, `HDX`.
  final pulumi.Input<String>? protocolType;
  /// The AD Connector specifications. Valid values: `1`, `2`.
  final pulumi.Input<int>? specification;
  /// The DNS address N of the enterprise AD subdomain. If you specify a value for the `sub_domain_name` parameter but you do not specify a value for this parameter, the DNS address of the subdomain is the same as the DNS address of the parent domain.
  final pulumi.Input<List<String>>? subDomainDnsAddresses;
  /// The domain name of the enterprise AD subdomain.
  final pulumi.Input<String>? subDomainName;
  /// The verification code. If the CEN instance that you specify for the CenId parameter belongs to another Alibaba Cloud account, you must call the SendVerifyCode operation to obtain the verification code.
  final pulumi.Input<String>? verifyCode;

  /// Creates a new [AdConnectorOfficeSiteArgs].
  /// [adConnectorOfficeSiteName] The name of the workspace. The name must be 2 to 255 characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain digits, colons (:), underscores (_), and hyphens (-).
  /// [adHostname] The ad hostname.
  /// [bandwidth] The maximum public bandwidth value. Valid values: 0 to 200. If you do not specify this parameter or you set this parameter to 0, Internet access is disabled.
  /// [cenId] The ID of the CEN instance.
  /// [cenOwnerId] The cen owner id.
  /// [cidrBlock] Workspace Corresponds to the Security Office Network of IPv4 Segment.
  /// [desktopAccessType] The method that you use to connect to cloud desktops. **Note:** The VPC connection method is provided by Alibaba Cloud PrivateLink. You are not charged for PrivateLink. When you set this parameter to VPC or Any, PrivateLink is automatically activated. Default value: `INTERNET`. Valid values:
  /// [dnsAddresses] The IP address N of the DNS server of the enterprise AD system. You can specify only one IP address.
  /// [domainName] The domain name of the enterprise AD system. You can register each domain name only once.
  /// [domainPassword] The password of the domain administrator. The password can be up to 64 characters in length.
  /// [domainUserName] The username of the domain administrator. The username can be up to 64 characters in length.
  /// [enableAdminAccess] Specifies whether to grant the permissions of the local administrator to the desktop users. Default value: true.
  /// [enableInternetAccess] Specifies whether to enable Internet access.
  /// [mfaEnabled] Specifies whether to enable multi-factor authentication (MFA).
  /// [protocolType] The protocol type. Valid values: `ASP`, `HDX`.
  /// [specification] The AD Connector specifications. Valid values: `1`, `2`.
  /// [subDomainDnsAddresses] The DNS address N of the enterprise AD subdomain. If you specify a value for the `sub_domain_name` parameter but you do not specify a value for this parameter, the DNS address of the subdomain is the same as the DNS address of the parent domain.
  /// [subDomainName] The domain name of the enterprise AD subdomain.
  /// [verifyCode] The verification code. If the CEN instance that you specify for the CenId parameter belongs to another Alibaba Cloud account, you must call the SendVerifyCode operation to obtain the verification code.
  AdConnectorOfficeSiteArgs({
    required pulumi.Output<String> adConnectorOfficeSiteName,
    pulumi.Output<String>? adHostname,
    pulumi.Output<int>? bandwidth,
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? cenOwnerId,
    required pulumi.Output<String> cidrBlock,
    pulumi.Output<String>? desktopAccessType,
    required pulumi.Output<List<String>> dnsAddresses,
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? domainPassword,
    pulumi.Output<String>? domainUserName,
    pulumi.Output<bool>? enableAdminAccess,
    pulumi.Output<bool>? enableInternetAccess,
    pulumi.Output<bool>? mfaEnabled,
    pulumi.Output<String>? protocolType,
    pulumi.Output<int>? specification,
    pulumi.Output<List<String>>? subDomainDnsAddresses,
    pulumi.Output<String>? subDomainName,
    pulumi.Output<String>? verifyCode,
  }) :
      adConnectorOfficeSiteName = pulumi.Input.asInput<String>(adConnectorOfficeSiteName),
      adHostname = pulumi.Input.asOptionalInput<String>(adHostname),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      cenId = pulumi.Input.asInput<String>(cenId),
      cenOwnerId = pulumi.Input.asOptionalInput<String>(cenOwnerId),
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      desktopAccessType = pulumi.Input.asOptionalInput<String>(desktopAccessType),
      dnsAddresses = pulumi.Input.asInput<List<String>>(dnsAddresses),
      domainName = pulumi.Input.asInput<String>(domainName),
      domainPassword = pulumi.Input.asOptionalInput<String>(domainPassword),
      domainUserName = pulumi.Input.asOptionalInput<String>(domainUserName),
      enableAdminAccess = pulumi.Input.asOptionalInput<bool>(enableAdminAccess),
      enableInternetAccess = pulumi.Input.asOptionalInput<bool>(enableInternetAccess),
      mfaEnabled = pulumi.Input.asOptionalInput<bool>(mfaEnabled),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      specification = pulumi.Input.asOptionalInput<int>(specification),
      subDomainDnsAddresses = pulumi.Input.asOptionalInput<List<String>>(subDomainDnsAddresses),
      subDomainName = pulumi.Input.asOptionalInput<String>(subDomainName),
      verifyCode = pulumi.Input.asOptionalInput<String>(verifyCode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adConnectorOfficeSiteName': adConnectorOfficeSiteName,
      'adHostname': ?adHostname,
      'bandwidth': ?bandwidth,
      'cenId': cenId,
      'cenOwnerId': ?cenOwnerId,
      'cidrBlock': cidrBlock,
      'desktopAccessType': ?desktopAccessType,
      'dnsAddresses': dnsAddresses,
      'domainName': domainName,
      'domainPassword': ?domainPassword,
      'domainUserName': ?domainUserName,
      'enableAdminAccess': ?enableAdminAccess,
      'enableInternetAccess': ?enableInternetAccess,
      'mfaEnabled': ?mfaEnabled,
      'protocolType': ?protocolType,
      'specification': ?specification,
      'subDomainDnsAddresses': ?subDomainDnsAddresses,
      'subDomainName': ?subDomainName,
      'verifyCode': ?verifyCode,
    };
  }

  factory AdConnectorOfficeSiteArgs.fromMap(Map<String, dynamic> map) {
    return AdConnectorOfficeSiteArgs(
      adConnectorOfficeSiteName: pulumi.Output.create<String>(map['adConnectorOfficeSiteName'] as String),
      adHostname: map['adHostname'] == null ? null : pulumi.Output.create<String>(map['adHostname'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      cenOwnerId: map['cenOwnerId'] == null ? null : pulumi.Output.create<String>(map['cenOwnerId'] as String),
      cidrBlock: pulumi.Output.create<String>(map['cidrBlock'] as String),
      desktopAccessType: map['desktopAccessType'] == null ? null : pulumi.Output.create<String>(map['desktopAccessType'] as String),
      dnsAddresses: pulumi.Output.create<List<String>>((map['dnsAddresses'] as List).cast<String>()),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      domainPassword: map['domainPassword'] == null ? null : pulumi.Output.create<String>(map['domainPassword'] as String),
      domainUserName: map['domainUserName'] == null ? null : pulumi.Output.create<String>(map['domainUserName'] as String),
      enableAdminAccess: map['enableAdminAccess'] == null ? null : pulumi.Output.create<bool>(map['enableAdminAccess'] as bool),
      enableInternetAccess: map['enableInternetAccess'] == null ? null : pulumi.Output.create<bool>(map['enableInternetAccess'] as bool),
      mfaEnabled: map['mfaEnabled'] == null ? null : pulumi.Output.create<bool>(map['mfaEnabled'] as bool),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<int>(map['specification'] as int),
      subDomainDnsAddresses: map['subDomainDnsAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['subDomainDnsAddresses'] as List).cast<String>()),
      subDomainName: map['subDomainName'] == null ? null : pulumi.Output.create<String>(map['subDomainName'] as String),
      verifyCode: map['verifyCode'] == null ? null : pulumi.Output.create<String>(map['verifyCode'] as String),
    );
  }
}

