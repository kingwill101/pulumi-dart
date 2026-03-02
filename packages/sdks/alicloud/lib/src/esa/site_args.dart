// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_site_site_args_doc}
/// The set of arguments for Site.
/// {@endtemplate}
/// {@macro pulumi_esa_site_site_args_doc}
class SiteArgs {
  /// The DNS setup. Valid values:
  /// - `NS`
  /// - `CNAME`
  final pulumi.Input<String>? accessType;
  /// Add visitor geolocation header. Value range:
  final pulumi.Input<String>? addClientGeolocationHeader;
  /// Add the "ali-real-client-ip" header containing the real client IP. Value range:
  final pulumi.Input<String>? addRealClientIpHeader;
  /// Multi-level cache architecture mode. Possible values:
  final pulumi.Input<String>? cacheArchitectureMode;
  /// Site cache hold switch. Value:
  final pulumi.Input<String>? cacheReserveEnable;
  /// The ID of the cache instance.
  final pulumi.Input<String>? cacheReserveInstanceId;
  /// Whether the custom CacheTag name ignores case. Value range:
  final pulumi.Input<String>? caseInsensitive;
  /// The service location. Valid values:
  final pulumi.Input<String>? coverage;
  /// Whether to enable mainland China network access optimization, the default is off. Value range:
  final pulumi.Input<String>? crossBorderOptimization;
  /// Development mode configuration function switch. Value range:
  final pulumi.Input<String>? developmentMode;
  /// CNAME flattening mode. Possible values:
  final pulumi.Input<String>? flattenMode;
  /// The ID of the associated package instance.
  final pulumi.Input<String> instanceId;
  /// Specifies whether to enable IPv6. Valid values:
  final pulumi.Input<String>? ipv6Enable;
  /// The region in which Ipv6 is enabled. The default value is x.x:
  /// - 'x.x': Global.
  /// - 'Cn.cn ': Mainland China.
  final pulumi.Input<String>? ipv6Region;
  /// Specifies whether to temporarily pause ESA on the website. If you set this parameter to true, all requests to the domains in your DNS records go directly to your origin server. Valid values:
  final pulumi.Input<bool>? paused;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Release the search engine crawler configuration. Value:
  final pulumi.Input<String>? seoBypass;
  /// The website name.
  final pulumi.Input<String> siteName;
  /// Specifies whether to enable site hold.After you enable site hold, other accounts cannot add your website domain or its subdomains to ESA. Valid values:
  final pulumi.Input<String>? siteNameExclusive;
  /// The version number of the site. For sites with version management enabled, you can use this parameter to specify the site version for which the configuration will take effect, defaulting to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Custom CacheTag name.
  final pulumi.Input<String>? tagName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Version management enabled. When true, version management is turned on for the table site.
  final pulumi.Input<bool>? versionManagement;

  /// Creates a new [SiteArgs].
  /// [accessType] The DNS setup. Valid values:
  /// [addClientGeolocationHeader] Add visitor geolocation header. Value range:
  /// [addRealClientIpHeader] Add the "ali-real-client-ip" header containing the real client IP. Value range:
  /// [cacheArchitectureMode] Multi-level cache architecture mode. Possible values:
  /// [cacheReserveEnable] Site cache hold switch. Value:
  /// [cacheReserveInstanceId] The ID of the cache instance.
  /// [caseInsensitive] Whether the custom CacheTag name ignores case. Value range:
  /// [coverage] The service location. Valid values:
  /// [crossBorderOptimization] Whether to enable mainland China network access optimization, the default is off. Value range:
  /// [developmentMode] Development mode configuration function switch. Value range:
  /// [flattenMode] CNAME flattening mode. Possible values:
  /// [instanceId] The ID of the associated package instance.
  /// [ipv6Enable] Specifies whether to enable IPv6. Valid values:
  /// [ipv6Region] The region in which Ipv6 is enabled. The default value is x.x:
  /// [paused] Specifies whether to temporarily pause ESA on the website. If you set this parameter to true, all requests to the domains in your DNS records go directly to your origin server. Valid values:
  /// [resourceGroupId] The ID of the resource group
  /// [seoBypass] Release the search engine crawler configuration. Value:
  /// [siteName] The website name.
  /// [siteNameExclusive] Specifies whether to enable site hold.After you enable site hold, other accounts cannot add your website domain or its subdomains to ESA. Valid values:
  /// [siteVersion] The version number of the site. For sites with version management enabled, you can use this parameter to specify the site version for which the configuration will take effect, defaulting to version 0.
  /// [tagName] Custom CacheTag name.
  /// [tags] Resource tags
  /// [versionManagement] Version management enabled. When true, version management is turned on for the table site.
  SiteArgs({
    this.accessType,
    this.addClientGeolocationHeader,
    this.addRealClientIpHeader,
    this.cacheArchitectureMode,
    this.cacheReserveEnable,
    this.cacheReserveInstanceId,
    this.caseInsensitive,
    this.coverage,
    this.crossBorderOptimization,
    this.developmentMode,
    this.flattenMode,
    required this.instanceId,
    this.ipv6Enable,
    this.ipv6Region,
    this.paused,
    this.resourceGroupId,
    this.seoBypass,
    required this.siteName,
    this.siteNameExclusive,
    this.siteVersion,
    this.tagName,
    this.tags,
    this.versionManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'addClientGeolocationHeader': ?addClientGeolocationHeader,
      'addRealClientIpHeader': ?addRealClientIpHeader,
      'cacheArchitectureMode': ?cacheArchitectureMode,
      'cacheReserveEnable': ?cacheReserveEnable,
      'cacheReserveInstanceId': ?cacheReserveInstanceId,
      'caseInsensitive': ?caseInsensitive,
      'coverage': ?coverage,
      'crossBorderOptimization': ?crossBorderOptimization,
      'developmentMode': ?developmentMode,
      'flattenMode': ?flattenMode,
      'instanceId': instanceId,
      'ipv6Enable': ?ipv6Enable,
      'ipv6Region': ?ipv6Region,
      'paused': ?paused,
      'resourceGroupId': ?resourceGroupId,
      'seoBypass': ?seoBypass,
      'siteName': siteName,
      'siteNameExclusive': ?siteNameExclusive,
      'siteVersion': ?siteVersion,
      'tagName': ?tagName,
      'tags': ?tags,
      'versionManagement': ?versionManagement,
    };
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      accessType: map['accessType'] == null ? null : (map['accessType'] as String).input(),
      addClientGeolocationHeader: map['addClientGeolocationHeader'] == null ? null : (map['addClientGeolocationHeader'] as String).input(),
      addRealClientIpHeader: map['addRealClientIpHeader'] == null ? null : (map['addRealClientIpHeader'] as String).input(),
      cacheArchitectureMode: map['cacheArchitectureMode'] == null ? null : (map['cacheArchitectureMode'] as String).input(),
      cacheReserveEnable: map['cacheReserveEnable'] == null ? null : (map['cacheReserveEnable'] as String).input(),
      cacheReserveInstanceId: map['cacheReserveInstanceId'] == null ? null : (map['cacheReserveInstanceId'] as String).input(),
      caseInsensitive: map['caseInsensitive'] == null ? null : (map['caseInsensitive'] as String).input(),
      coverage: map['coverage'] == null ? null : (map['coverage'] as String).input(),
      crossBorderOptimization: map['crossBorderOptimization'] == null ? null : (map['crossBorderOptimization'] as String).input(),
      developmentMode: map['developmentMode'] == null ? null : (map['developmentMode'] as String).input(),
      flattenMode: map['flattenMode'] == null ? null : (map['flattenMode'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ipv6Enable: map['ipv6Enable'] == null ? null : (map['ipv6Enable'] as String).input(),
      ipv6Region: map['ipv6Region'] == null ? null : (map['ipv6Region'] as String).input(),
      paused: map['paused'] == null ? null : (map['paused'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      seoBypass: map['seoBypass'] == null ? null : (map['seoBypass'] as String).input(),
      siteName: (map['siteName'] as String).input(),
      siteNameExclusive: map['siteNameExclusive'] == null ? null : (map['siteNameExclusive'] as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion'] as int).input(),
      tagName: map['tagName'] == null ? null : (map['tagName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      versionManagement: map['versionManagement'] == null ? null : (map['versionManagement'] as bool).input(),
    );
  }
}

