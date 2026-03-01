// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_site_config_cors.dart';
import 'app_service_site_config_ip_restriction.dart';
import 'app_service_site_config_scm_ip_restriction.dart';

class AppServiceSiteConfig {
  /// Are Managed Identity Credentials used for Azure Container Registry pull
  final bool? acrUseManagedIdentityCredentials;
  /// If using User Managed Identity, the User Managed Identity Client Id
  ///
  /// > **NOTE:** When using User Managed Identity with Azure Container Registry the Identity will need to have the [ACRPull role assigned](https://docs.microsoft.com/azure/container-registry/container-registry-authentication-managed-identity#example-1-access-with-a-user-assigned-identity)
  final String? acrUserManagedIdentityClientId;
  /// Should the app be loaded at all times? Defaults to `false`.
  ///
  /// > **NOTE:** when using an App Service Plan in the `Free` or `Shared` Tiers `always_on` must be set to `false`.
  final bool? alwaysOn;
  /// App command line to launch, e.g. `/sbin/myserver -b 0.0.0.0`.
  final String? appCommandLine;
  /// The name of the slot to automatically swap to during deployment
  final String? autoSwapSlotName;
  /// A `cors` block as defined below.
  final AppServiceSiteConfigCors? cors;
  /// The ordering of default documents to load, if an address isn't specified.
  final List<String>? defaultDocuments;
  /// The version of the .NET framework's CLR used in this App Service. Possible values are `v2.0` (which will use the latest version of the .NET framework for the .NET CLR v2 - currently `.net 3.5`), `v4.0` (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is `.net 4.7.1`), `v5.0` and `v6.0`. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to `v4.0`.
  final String? dotnetFrameworkVersion;
  /// State of FTP / FTPS service for this App Service. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  final String? ftpsState;
  /// The health check path to be pinged by App Service. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html).
  final String? healthCheckPath;
  /// Is HTTP2 Enabled on this App Service? Defaults to `false`.
  final bool? http2Enabled;
  /// A list of objects representing ip restrictions as defined below.
  ///
  /// > **NOTE** User has to explicitly set `ip_restriction` to empty slice (`[]`) to remove it.
  final List<AppServiceSiteConfigIpRestriction>? ipRestrictions;
  /// The Java Container to use. If specified `java_version` and `java_container_version` must also be specified. Possible values are `JAVA`, `JETTY`, and `TOMCAT`.
  final String? javaContainer;
  /// The version of the Java Container to use. If specified `java_version` and `java_container` must also be specified.
  final String? javaContainerVersion;
  /// The version of Java to use. If specified `java_container` and `java_container_version` must also be specified. Possible values are `1.7`, `1.8` and `11` and their specific versions - except for Java 11 (e.g. `1.7.0_80`, `1.8.0_181`, `11`)
  final String? javaVersion;
  /// Linux App Framework and version for the App Service. Possible options are a Docker container (`DOCKER|<user/image:tag>`), a base-64 encoded Docker Compose file (`COMPOSE|${filebase64("compose.yml")}`) or a base-64 encoded Kubernetes Manifest (`KUBE|${filebase64("kubernetes.yml")}`).
  ///
  /// > **NOTE:** To set this property the App Service Plan to which the App belongs must be configured with `kind = "Linux"`, and `reserved = true` or the API will reject any value supplied.
  final String? linuxFxVersion;
  /// Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  ///
  /// > **NOTE:** MySQL In App is not intended for production environments and will not scale beyond a single instance. Instead you may wish to use Azure Database for MySQL.
  final bool? localMysqlEnabled;
  /// The Managed Pipeline Mode. Possible values are `Integrated` and `Classic`. Defaults to `Integrated`.
  final String? managedPipelineMode;
  /// The minimum supported TLS version for the app service. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new app services.
  final String? minTlsVersion;
  /// The scaled number of workers (for per site scaling) of this App Service. Requires that `per_site_scaling` is enabled on the `azure.appservice.Plan`. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app).
  final int? numberOfWorkers;
  /// The version of PHP to use in this App Service. Possible values are `5.5`, `5.6`, `7.0`, `7.1`, `7.2`, `7.3` and `7.4`.
  final String? phpVersion;
  /// The version of Python to use in this App Service. Possible values are `2.7` and `3.4`.
  final String? pythonVersion;
  /// Is Remote Debugging Enabled? Defaults to `false`.
  final bool? remoteDebuggingEnabled;
  /// Which version of Visual Studio should the Remote Debugger be compatible with? Currently only `VS2022` is supported.
  final String? remoteDebuggingVersion;
  /// A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  ///
  /// > **NOTE** User has to explicitly set `scm_ip_restriction` to empty slice (`[]`) to remove it.
  final List<AppServiceSiteConfigScmIpRestriction>? scmIpRestrictions;
  /// The type of Source Control enabled for this App Service. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  final String? scmType;
  /// IP security restrictions for scm to use main. Defaults to `false`.
  ///
  /// > **NOTE** Any `scm_ip_restriction` blocks configured are ignored by the service when `scm_use_main_ip_restriction` is set to `true`. Any scm restrictions will become active if this is subsequently set to `false` or removed.
  final bool? scmUseMainIpRestriction;
  /// Should the App Service run in 32 bit mode, rather than 64 bit mode?
  ///
  /// > **NOTE:** when using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final bool? use32BitWorkerProcess;
  /// Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  ///
  /// > **NOTE:** This setting supersedes the previous mechanism of setting the `app_settings` value of `WEBSITE_VNET_ROUTE_ALL`. However, to prevent older configurations breaking Terraform will update this value if it not explicitly set to the value in `app_settings.WEBSITE_VNET_ROUTE_ALL`.
  final bool? vnetRouteAllEnabled;
  /// Should WebSockets be enabled?
  final bool? websocketsEnabled;
  /// The Windows Docker container image (`DOCKER|<user/image:tag>`)
  final String? windowsFxVersion;

  /// Creates a new [AppServiceSiteConfig].
  /// [acrUseManagedIdentityCredentials] Are Managed Identity Credentials used for Azure Container Registry pull
  /// [acrUserManagedIdentityClientId] If using User Managed Identity, the User Managed Identity Client Id
  /// [alwaysOn] Should the app be loaded at all times? Defaults to `false`.
  /// [appCommandLine] App command line to launch, e.g. `/sbin/myserver -b 0.0.0.0`.
  /// [autoSwapSlotName] The name of the slot to automatically swap to during deployment
  /// [cors] A `cors` block as defined below.
  /// [defaultDocuments] The ordering of default documents to load, if an address isn't specified.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this App Service. Possible values are `v2.0` (which will use the latest version of the .NET framework for the .NET CLR v2 - currently `.net 3.5`), `v4.0` (which corresponds to the latest version of the .NET CLR v4 - which at the time of writing is `.net 4.7.1`), `v5.0` and `v6.0`. [For more information on which .NET CLR version to use based on the .NET framework you're targeting - please see this table](https://en.wikipedia.org/wiki/.NET_Framework_version_history#Overview). Defaults to `v4.0`.
  /// [ftpsState] State of FTP / FTPS service for this App Service. Possible values include: `AllAllowed`, `FtpsOnly` and `Disabled`.
  /// [healthCheckPath] The health check path to be pinged by App Service. [For more information - please see App Service health check announcement](https://azure.github.io/AppService/2020/08/24/healthcheck-on-app-service.html).
  /// [http2Enabled] Is HTTP2 Enabled on this App Service? Defaults to `false`.
  /// [ipRestrictions] A list of objects representing ip restrictions as defined below.
  /// [javaContainer] The Java Container to use. If specified `java_version` and `java_container_version` must also be specified. Possible values are `JAVA`, `JETTY`, and `TOMCAT`.
  /// [javaContainerVersion] The version of the Java Container to use. If specified `java_version` and `java_container` must also be specified.
  /// [javaVersion] The version of Java to use. If specified `java_container` and `java_container_version` must also be specified. Possible values are `1.7`, `1.8` and `11` and their specific versions - except for Java 11 (e.g. `1.7.0_80`, `1.8.0_181`, `11`)
  /// [linuxFxVersion] Linux App Framework and version for the App Service. Possible options are a Docker container (`DOCKER|<user/image:tag>`), a base-64 encoded Docker Compose file (`COMPOSE|${filebase64("compose.yml")}`) or a base-64 encoded Kubernetes Manifest (`KUBE|${filebase64("kubernetes.yml")}`).
  /// [localMysqlEnabled] Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  /// [managedPipelineMode] The Managed Pipeline Mode. Possible values are `Integrated` and `Classic`. Defaults to `Integrated`.
  /// [minTlsVersion] The minimum supported TLS version for the app service. Possible values are `1.0`, `1.1`, and `1.2`. Defaults to `1.2` for new app services.
  /// [numberOfWorkers] The scaled number of workers (for per site scaling) of this App Service. Requires that `per_site_scaling` is enabled on the `azure.appservice.Plan`. [For more information - please see Microsoft documentation on high-density hosting](https://docs.microsoft.com/azure/app-service/manage-scale-per-app).
  /// [phpVersion] The version of PHP to use in this App Service. Possible values are `5.5`, `5.6`, `7.0`, `7.1`, `7.2`, `7.3` and `7.4`.
  /// [pythonVersion] The version of Python to use in this App Service. Possible values are `2.7` and `3.4`.
  /// [remoteDebuggingEnabled] Is Remote Debugging Enabled? Defaults to `false`.
  /// [remoteDebuggingVersion] Which version of Visual Studio should the Remote Debugger be compatible with? Currently only `VS2022` is supported.
  /// [scmIpRestrictions] A list of `scm_ip_restriction` objects representing IP restrictions as defined below.
  /// [scmType] The type of Source Control enabled for this App Service. Defaults to `None`. Possible values are: `BitbucketGit`, `BitbucketHg`, `CodePlexGit`, `CodePlexHg`, `Dropbox`, `ExternalGit`, `ExternalHg`, `GitHub`, `LocalGit`, `None`, `OneDrive`, `Tfs`, `VSO`, and `VSTSRM`
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main. Defaults to `false`.
  /// [use32BitWorkerProcess] Should the App Service run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to `false`.
  /// [websocketsEnabled] Should WebSockets be enabled?
  /// [windowsFxVersion] The Windows Docker container image (`DOCKER|<user/image:tag>`)
  AppServiceSiteConfig({
    this.acrUseManagedIdentityCredentials,
    this.acrUserManagedIdentityClientId,
    this.alwaysOn,
    this.appCommandLine,
    this.autoSwapSlotName,
    this.cors,
    this.defaultDocuments,
    this.dotnetFrameworkVersion,
    this.ftpsState,
    this.healthCheckPath,
    this.http2Enabled,
    this.ipRestrictions,
    this.javaContainer,
    this.javaContainerVersion,
    this.javaVersion,
    this.linuxFxVersion,
    this.localMysqlEnabled,
    this.managedPipelineMode,
    this.minTlsVersion,
    this.numberOfWorkers,
    this.phpVersion,
    this.pythonVersion,
    this.remoteDebuggingEnabled,
    this.remoteDebuggingVersion,
    this.scmIpRestrictions,
    this.scmType,
    this.scmUseMainIpRestriction,
    this.use32BitWorkerProcess,
    this.vnetRouteAllEnabled,
    this.websocketsEnabled,
    this.windowsFxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrUseManagedIdentityCredentials': ?acrUseManagedIdentityCredentials,
      'acrUserManagedIdentityClientId': ?acrUserManagedIdentityClientId,
      'alwaysOn': ?alwaysOn,
      'appCommandLine': ?appCommandLine,
      'autoSwapSlotName': ?autoSwapSlotName,
      'cors': ?cors == null ? null : cors!.toMap(),
      'defaultDocuments': ?defaultDocuments,
      'dotnetFrameworkVersion': ?dotnetFrameworkVersion,
      'ftpsState': ?ftpsState,
      'healthCheckPath': ?healthCheckPath,
      'http2Enabled': ?http2Enabled,
      'ipRestrictions': ?ipRestrictions == null ? null : pulumi.Input.encodeList<AppServiceSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions!, (value) => value.toMap()),
      'javaContainer': ?javaContainer,
      'javaContainerVersion': ?javaContainerVersion,
      'javaVersion': ?javaVersion,
      'linuxFxVersion': ?linuxFxVersion,
      'localMysqlEnabled': ?localMysqlEnabled,
      'managedPipelineMode': ?managedPipelineMode,
      'minTlsVersion': ?minTlsVersion,
      'numberOfWorkers': ?numberOfWorkers,
      'phpVersion': ?phpVersion,
      'pythonVersion': ?pythonVersion,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'remoteDebuggingVersion': ?remoteDebuggingVersion,
      'scmIpRestrictions': ?scmIpRestrictions == null ? null : pulumi.Input.encodeList<AppServiceSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions!, (value) => value.toMap()),
      'scmType': ?scmType,
      'scmUseMainIpRestriction': ?scmUseMainIpRestriction,
      'use32BitWorkerProcess': ?use32BitWorkerProcess,
      'vnetRouteAllEnabled': ?vnetRouteAllEnabled,
      'websocketsEnabled': ?websocketsEnabled,
      'windowsFxVersion': ?windowsFxVersion,
    };
  }

  factory AppServiceSiteConfig.fromMap(Map<String, dynamic> map) {
    return AppServiceSiteConfig(
      acrUseManagedIdentityCredentials: map['acrUseManagedIdentityCredentials'] == null ? null : map['acrUseManagedIdentityCredentials'] as bool,
      acrUserManagedIdentityClientId: map['acrUserManagedIdentityClientId'] == null ? null : map['acrUserManagedIdentityClientId'] as String,
      alwaysOn: map['alwaysOn'] == null ? null : map['alwaysOn'] as bool,
      appCommandLine: map['appCommandLine'] == null ? null : map['appCommandLine'] as String,
      autoSwapSlotName: map['autoSwapSlotName'] == null ? null : map['autoSwapSlotName'] as String,
      cors: map['cors'] == null ? null : AppServiceSiteConfigCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      defaultDocuments: map['defaultDocuments'] == null ? null : (map['defaultDocuments'] as List).cast<String>(),
      dotnetFrameworkVersion: map['dotnetFrameworkVersion'] == null ? null : map['dotnetFrameworkVersion'] as String,
      ftpsState: map['ftpsState'] == null ? null : map['ftpsState'] as String,
      healthCheckPath: map['healthCheckPath'] == null ? null : map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] == null ? null : map['http2Enabled'] as bool,
      ipRestrictions: map['ipRestrictions'] == null ? null : pulumi.Input.decodeList<AppServiceSiteConfigIpRestriction>(map['ipRestrictions'], (value) => AppServiceSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      javaContainer: map['javaContainer'] == null ? null : map['javaContainer'] as String,
      javaContainerVersion: map['javaContainerVersion'] == null ? null : map['javaContainerVersion'] as String,
      javaVersion: map['javaVersion'] == null ? null : map['javaVersion'] as String,
      linuxFxVersion: map['linuxFxVersion'] == null ? null : map['linuxFxVersion'] as String,
      localMysqlEnabled: map['localMysqlEnabled'] == null ? null : map['localMysqlEnabled'] as bool,
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      minTlsVersion: map['minTlsVersion'] == null ? null : map['minTlsVersion'] as String,
      numberOfWorkers: map['numberOfWorkers'] == null ? null : map['numberOfWorkers'] as int,
      phpVersion: map['phpVersion'] == null ? null : map['phpVersion'] as String,
      pythonVersion: map['pythonVersion'] == null ? null : map['pythonVersion'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] == null ? null : map['remoteDebuggingVersion'] as String,
      scmIpRestrictions: map['scmIpRestrictions'] == null ? null : pulumi.Input.decodeList<AppServiceSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => AppServiceSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmType: map['scmType'] == null ? null : map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] == null ? null : map['scmUseMainIpRestriction'] as bool,
      use32BitWorkerProcess: map['use32BitWorkerProcess'] == null ? null : map['use32BitWorkerProcess'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] == null ? null : map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] == null ? null : map['websocketsEnabled'] as bool,
      windowsFxVersion: map['windowsFxVersion'] == null ? null : map['windowsFxVersion'] as String,
    );
  }
}

