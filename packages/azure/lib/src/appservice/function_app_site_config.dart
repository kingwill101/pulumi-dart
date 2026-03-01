// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_site_config_cors.dart';
import 'function_app_site_config_ip_restriction.dart';
import 'function_app_site_config_scm_ip_restriction.dart';

class FunctionAppSiteConfig {
  /// Should the Function App be loaded at all times? Defaults to `false`.
  final bool? alwaysOn;
  /// The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  final int? appScaleLimit;
  /// The name of the slot to automatically swap to during deployment
  ///
  /// > **NOTE:** This attribute is only used for slots.
  final String? autoSwapSlotName;
  /// A `cors` block as defined below.
  final FunctionAppSiteConfigCors? cors;
  /// The version of the .NET framework's CLR used in this function app. Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0` and `v6.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  final String? dotnetFrameworkVersion;
  /// The number of minimum instances for this function app. Only affects apps on the Premium plan. Possible values are between `1` and `20`.
  final int? elasticInstanceMinimum;
  /// State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `AllAllowed`.
  final String? ftpsState;
  /// Path which will be checked for this function app health.
  final String? healthCheckPath;
  /// Specifies whether or not the HTTP2 protocol should be enabled. Defaults to `false`.
  final bool? http2Enabled;
  /// A list of `ip_restriction` objects representing IP restrictions as defined below.
  ///
  /// > **NOTE** User has to explicitly set `ip_restriction` to empty slice (`[]`) to remove it.
  final List<FunctionAppSiteConfigIpRestriction>? ipRestrictions;
  /// Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  final String? javaVersion;
  /// Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  final String? linuxFxVersion;
  /// The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  final String? minTlsVersion;
  /// The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  final int? preWarmedInstanceCount;
  /// Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  final bool? runtimeScaleMonitoringEnabled;
  /// A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  ///
  /// > **NOTE** User has to explicitly set `scm_ip_restriction` to empty slice (`[]`) to remove it.
  final List<FunctionAppSiteConfigScmIpRestriction>? scmIpRestrictions;
  /// The type of Source Control used by the Function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  ///
  /// > **NOTE:** This setting is incompatible with the `source_control` block which updates this value based on the setting provided.
  final String? scmType;
  /// IP security restrictions for scm to use main. Defaults to `false`.
  ///
  /// > **NOTE** Any `scm_ip_restriction` blocks configured are ignored by the service when `scm_use_main_ip_restriction` is set to `true`. Any scm restrictions will become active if this is subsequently set to `false` or removed.
  final bool? scmUseMainIpRestriction;
  /// Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  ///
  /// > **Note:** when using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final bool? use32BitWorkerProcess;
  /// Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  ///
  /// > **NOTE:** This setting supersedes the previous mechanism of setting the `app_settings` value of `WEBSITE_VNET_ROUTE_ALL`. However, to prevent older configurations breaking Terraform will update this value if it not explicitly set to the value in `app_settings.WEBSITE_VNET_ROUTE_ALL`.
  final bool? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final bool? websocketsEnabled;

  /// Creates a new [FunctionAppSiteConfig].
  /// [alwaysOn] Should the Function App be loaded at all times? Defaults to `false`.
  /// [appScaleLimit] The number of workers this function app can scale out to. Only applicable to apps on the Consumption and Premium plan.
  /// [autoSwapSlotName] The name of the slot to automatically swap to during deployment
  /// [cors] A `cors` block as defined below.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this function app. Possible values are `v4.0` (including .NET Core 2.1 and 3.1), `v5.0` and `v6.0`. [For more information on which .NET Framework version to use based on the runtime version you're targeting - please see this table](https://docs.microsoft.com/azure/azure-functions/functions-dotnet-class-library#supported-versions). Defaults to `v4.0`.
  /// [elasticInstanceMinimum] The number of minimum instances for this function app. Only affects apps on the Premium plan. Possible values are between `1` and `20`.
  /// [ftpsState] State of FTP / FTPS service for this function app. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`. Defaults to `AllAllowed`.
  /// [healthCheckPath] Path which will be checked for this function app health.
  /// [http2Enabled] Specifies whether or not the HTTP2 protocol should be enabled. Defaults to `false`.
  /// [ipRestrictions] A list of `ip_restriction` objects representing IP restrictions as defined below.
  /// [javaVersion] Java version hosted by the function app in Azure. Possible values are `1.8`, `11` & `17` (In-Preview).
  /// [linuxFxVersion] Linux App Framework and version for the AppService, e.g. `DOCKER|(golang:latest)`.
  /// [minTlsVersion] The minimum supported TLS version for the function app. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new function apps.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this function app. Only affects apps on the Premium plan.
  /// [runtimeScaleMonitoringEnabled] Should Runtime Scale Monitoring be enabled?. Only applicable to apps on the Premium plan. Defaults to `false`.
  /// [scmIpRestrictions] A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  /// [scmType] The type of Source Control used by the Function App. Valid values include: `BitBucketGit`, `BitBucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None` (default), `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the Function App run in 32 bit mode, rather than 64 bit mode? Defaults to `true`.
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should WebSockets be enabled?
  FunctionAppSiteConfig({
    this.alwaysOn,
    this.appScaleLimit,
    this.autoSwapSlotName,
    this.cors,
    this.dotnetFrameworkVersion,
    this.elasticInstanceMinimum,
    this.ftpsState,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictions,
    this.javaVersion,
    this.linuxFxVersion,
    this.minTlsVersion,
    this.preWarmedInstanceCount,
    this.runtimeScaleMonitoringEnabled,
    this.scmIpRestrictions,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorkerProcess,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': ?alwaysOn,
      'appScaleLimit': ?appScaleLimit,
      'autoSwapSlotName': ?autoSwapSlotName,
      'cors': ?cors == null ? null : cors!.toMap(),
      'dotnetFrameworkVersion': ?dotnetFrameworkVersion,
      'elasticInstanceMinimum': ?elasticInstanceMinimum,
      'ftpsState': ?ftpsState,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictions': ?ipRestrictions == null ? null : pulumi.Input.encodeList<FunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions!, (value) => value.toMap()),
      'javaVersion': ?javaVersion,
      'linuxFxVersion': ?linuxFxVersion,
      'minTlsVersion': ?minTlsVersion,
      'preWarmedInstanceCount': ?preWarmedInstanceCount,
      'runtimeScaleMonitoringEnabled': ?runtimeScaleMonitoringEnabled,
      'scmIpRestrictions': ?scmIpRestrictions == null ? null : pulumi.Input.encodeList<FunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions!, (value) => value.toMap()),
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
    };
  }

  factory FunctionAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return FunctionAppSiteConfig(
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      appScaleLimit: map['appScaleLimit'] == null ? null : map['appScaleLimit'] as int,
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : map['autoSwapSlotName'] as String,
      cors: map['cors'] == null ? null : FunctionAppSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      dotnetFrameworkVersion: map['dotnetFrameworkVersion'] == null ? null : map['dotnetFrameworkVersion'] as String,
      elasticInstanceMinimum: map['elasticInstanceMinimum'] == null ? null : map['elasticInstanceMinimum'] as int,
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      ipRestrictions: map['ipRestrictions'] == null ? null : pulumi.Input.decodeList<FunctionAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => FunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      linuxFxVersion: map['linuxFxVersion'] == null ? null : map['linuxFxVersion'] as String,
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] == null ? null : map['preWarmedInstanceCount'] as int,
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] == null ? null : map['runtimeScaleMonitoringEnabled'] as bool,
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : pulumi.Input.decodeList<FunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => FunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : map['scmUseMainIpRestriction'] as bool,
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : map['use32BitWorkerProcess'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] == null ? null : map['websocketsEnabled'] as bool,
    );
  }
}

