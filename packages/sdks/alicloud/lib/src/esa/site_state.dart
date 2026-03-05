// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Site resources.
class SiteState {
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
  /// The time when the website was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// Whether to enable mainland China network access optimization, the default is off. Value range:
  final pulumi.Input<String>? crossBorderOptimization;
  /// Development mode configuration function switch. Value range:
  final pulumi.Input<String>? developmentMode;
  /// CNAME flattening mode. Possible values:
  final pulumi.Input<String>? flattenMode;
  /// The ID of the associated package instance.
  final pulumi.Input<String>? instanceId;
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
  final pulumi.Input<String>? siteName;
  /// Specifies whether to enable site hold.After you enable site hold, other accounts cannot add your website domain or its subdomains to ESA. Valid values:
  final pulumi.Input<String>? siteNameExclusive;
  /// The version number of the site. For sites with version management enabled, you can use this parameter to specify the site version for which the configuration will take effect, defaulting to version 0.
  final pulumi.Input<int>? siteVersion;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Custom CacheTag name.
  final pulumi.Input<String>? tagName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Version management enabled. When true, version management is turned on for the table site.
  final pulumi.Input<bool>? versionManagement;

  /// Creates a new [SiteState].
  /// [accessType] The DNS setup. Valid values:
  /// [addClientGeolocationHeader] Add visitor geolocation header. Value range:
  /// [addRealClientIpHeader] Add the "ali-real-client-ip" header containing the real client IP. Value range:
  /// [cacheArchitectureMode] Multi-level cache architecture mode. Possible values:
  /// [cacheReserveEnable] Site cache hold switch. Value:
  /// [cacheReserveInstanceId] The ID of the cache instance.
  /// [caseInsensitive] Whether the custom CacheTag name ignores case. Value range:
  /// [coverage] The service location. Valid values:
  /// [createTime] The time when the website was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
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
  /// [status] The status of the resource
  /// [tagName] Custom CacheTag name.
  /// [tags] Resource tags
  /// [versionManagement] Version management enabled. When true, version management is turned on for the table site.
  SiteState({
    this.accessType,
    this.addClientGeolocationHeader,
    this.addRealClientIpHeader,
    this.cacheArchitectureMode,
    this.cacheReserveEnable,
    this.cacheReserveInstanceId,
    this.caseInsensitive,
    this.coverage,
    this.createTime,
    this.crossBorderOptimization,
    this.developmentMode,
    this.flattenMode,
    this.instanceId,
    this.ipv6Enable,
    this.ipv6Region,
    this.paused,
    this.resourceGroupId,
    this.seoBypass,
    this.siteName,
    this.siteNameExclusive,
    this.siteVersion,
    this.status,
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
      'createTime': ?createTime,
      'crossBorderOptimization': ?crossBorderOptimization,
      'developmentMode': ?developmentMode,
      'flattenMode': ?flattenMode,
      'instanceId': ?instanceId,
      'ipv6Enable': ?ipv6Enable,
      'ipv6Region': ?ipv6Region,
      'paused': ?paused,
      'resourceGroupId': ?resourceGroupId,
      'seoBypass': ?seoBypass,
      'siteName': ?siteName,
      'siteNameExclusive': ?siteNameExclusive,
      'siteVersion': ?siteVersion,
      'status': ?status,
      'tagName': ?tagName,
      'tags': ?tags,
      'versionManagement': ?versionManagement,
    };
  }

  factory SiteState.fromMap(Map<String, dynamic> map) {
    return SiteState(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addClientGeolocationHeader: (() { final guardedValue = map['addClientGeolocationHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addRealClientIpHeader: (() { final guardedValue = map['addRealClientIpHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheArchitectureMode: (() { final guardedValue = map['cacheArchitectureMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheReserveEnable: (() { final guardedValue = map['cacheReserveEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheReserveInstanceId: (() { final guardedValue = map['cacheReserveInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caseInsensitive: (() { final guardedValue = map['caseInsensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coverage: (() { final guardedValue = map['coverage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossBorderOptimization: (() { final guardedValue = map['crossBorderOptimization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developmentMode: (() { final guardedValue = map['developmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flattenMode: (() { final guardedValue = map['flattenMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Enable: (() { final guardedValue = map['ipv6Enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Region: (() { final guardedValue = map['ipv6Region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seoBypass: (() { final guardedValue = map['seoBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteNameExclusive: (() { final guardedValue = map['siteNameExclusive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionManagement: (() { final guardedValue = map['versionManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

