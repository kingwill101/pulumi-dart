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
    pulumi.Output<String>? accessType,
    pulumi.Output<String>? addClientGeolocationHeader,
    pulumi.Output<String>? addRealClientIpHeader,
    pulumi.Output<String>? cacheArchitectureMode,
    pulumi.Output<String>? cacheReserveEnable,
    pulumi.Output<String>? cacheReserveInstanceId,
    pulumi.Output<String>? caseInsensitive,
    pulumi.Output<String>? coverage,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? crossBorderOptimization,
    pulumi.Output<String>? developmentMode,
    pulumi.Output<String>? flattenMode,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? ipv6Enable,
    pulumi.Output<String>? ipv6Region,
    pulumi.Output<bool>? paused,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? seoBypass,
    pulumi.Output<String>? siteName,
    pulumi.Output<String>? siteNameExclusive,
    pulumi.Output<int>? siteVersion,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tagName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? versionManagement,
  }) :
      accessType = pulumi.Input.asOptionalInput<String>(accessType),
      addClientGeolocationHeader = pulumi.Input.asOptionalInput<String>(addClientGeolocationHeader),
      addRealClientIpHeader = pulumi.Input.asOptionalInput<String>(addRealClientIpHeader),
      cacheArchitectureMode = pulumi.Input.asOptionalInput<String>(cacheArchitectureMode),
      cacheReserveEnable = pulumi.Input.asOptionalInput<String>(cacheReserveEnable),
      cacheReserveInstanceId = pulumi.Input.asOptionalInput<String>(cacheReserveInstanceId),
      caseInsensitive = pulumi.Input.asOptionalInput<String>(caseInsensitive),
      coverage = pulumi.Input.asOptionalInput<String>(coverage),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      crossBorderOptimization = pulumi.Input.asOptionalInput<String>(crossBorderOptimization),
      developmentMode = pulumi.Input.asOptionalInput<String>(developmentMode),
      flattenMode = pulumi.Input.asOptionalInput<String>(flattenMode),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      ipv6Enable = pulumi.Input.asOptionalInput<String>(ipv6Enable),
      ipv6Region = pulumi.Input.asOptionalInput<String>(ipv6Region),
      paused = pulumi.Input.asOptionalInput<bool>(paused),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      seoBypass = pulumi.Input.asOptionalInput<String>(seoBypass),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      siteNameExclusive = pulumi.Input.asOptionalInput<String>(siteNameExclusive),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      status = pulumi.Input.asOptionalInput<String>(status),
      tagName = pulumi.Input.asOptionalInput<String>(tagName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionManagement = pulumi.Input.asOptionalInput<bool>(versionManagement);

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
      accessType: map['accessType'] == null ? null : pulumi.Output.create<String>(map['accessType'] as String),
      addClientGeolocationHeader: map['addClientGeolocationHeader'] == null ? null : pulumi.Output.create<String>(map['addClientGeolocationHeader'] as String),
      addRealClientIpHeader: map['addRealClientIpHeader'] == null ? null : pulumi.Output.create<String>(map['addRealClientIpHeader'] as String),
      cacheArchitectureMode: map['cacheArchitectureMode'] == null ? null : pulumi.Output.create<String>(map['cacheArchitectureMode'] as String),
      cacheReserveEnable: map['cacheReserveEnable'] == null ? null : pulumi.Output.create<String>(map['cacheReserveEnable'] as String),
      cacheReserveInstanceId: map['cacheReserveInstanceId'] == null ? null : pulumi.Output.create<String>(map['cacheReserveInstanceId'] as String),
      caseInsensitive: map['caseInsensitive'] == null ? null : pulumi.Output.create<String>(map['caseInsensitive'] as String),
      coverage: map['coverage'] == null ? null : pulumi.Output.create<String>(map['coverage'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      crossBorderOptimization: map['crossBorderOptimization'] == null ? null : pulumi.Output.create<String>(map['crossBorderOptimization'] as String),
      developmentMode: map['developmentMode'] == null ? null : pulumi.Output.create<String>(map['developmentMode'] as String),
      flattenMode: map['flattenMode'] == null ? null : pulumi.Output.create<String>(map['flattenMode'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      ipv6Enable: map['ipv6Enable'] == null ? null : pulumi.Output.create<String>(map['ipv6Enable'] as String),
      ipv6Region: map['ipv6Region'] == null ? null : pulumi.Output.create<String>(map['ipv6Region'] as String),
      paused: map['paused'] == null ? null : pulumi.Output.create<bool>(map['paused'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      seoBypass: map['seoBypass'] == null ? null : pulumi.Output.create<String>(map['seoBypass'] as String),
      siteName: map['siteName'] == null ? null : pulumi.Output.create<String>(map['siteName'] as String),
      siteNameExclusive: map['siteNameExclusive'] == null ? null : pulumi.Output.create<String>(map['siteNameExclusive'] as String),
      siteVersion: map['siteVersion'] == null ? null : pulumi.Output.create<int>(map['siteVersion'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagName: map['tagName'] == null ? null : pulumi.Output.create<String>(map['tagName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      versionManagement: map['versionManagement'] == null ? null : pulumi.Output.create<bool>(map['versionManagement'] as bool),
    );
  }
}

