// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_service_site_config_cor.dart';
import 'get_app_service_site_config_ip_restriction.dart';
import 'get_app_service_site_config_scm_ip_restriction.dart';

class GetAppServiceSiteConfig {
  /// Are Managed Identity Credentials used for Azure Container Registry pull.
  final bool acrUseManagedIdentityCredentials;
  /// The User Managed Identity Client Id.
  final String acrUserManagedIdentityClientId;
  /// Is the app loaded at all times?
  final bool alwaysOn;
  /// App command line to launch.
  final String appCommandLine;
  /// A `cors` block as defined above.
  final List<GetAppServiceSiteConfigCor> cors;
  /// The ordering of default documents to load, if an address isn't specified.
  final List<String> defaultDocuments;
  /// The version of the .NET framework's CLR used in this App Service.
  final String dotnetFrameworkVersion;
  /// State of FTP / FTPS service for this AppService.
  final String ftpsState;
  /// The health check path to be pinged by App Service.
  final String healthCheckPath;
  /// Is HTTP2 Enabled on this App Service?
  final bool http2Enabled;
  /// One or more `ip_restriction` blocks as defined above.
  final List<GetAppServiceSiteConfigIpRestriction> ipRestrictions;
  /// The Java Container in use.
  final String javaContainer;
  /// The version of the Java Container in use.
  final String javaContainerVersion;
  /// The version of Java in use.
  final String javaVersion;
  /// Linux App Framework and version for the AppService.
  final String linuxFxVersion;
  /// Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  final bool localMysqlEnabled;
  /// The Managed Pipeline Mode used in this App Service.
  final String managedPipelineMode;
  /// The minimum supported TLS version for this App Service.
  final String minTlsVersion;
  /// The scaled number of workers (for per site scaling) of this App Service.
  final int numberOfWorkers;
  /// The version of PHP used in this App Service.
  final String phpVersion;
  /// The version of Python used in this App Service.
  final String pythonVersion;
  /// Is Remote Debugging Enabled in this App Service?
  final bool remoteDebuggingEnabled;
  /// Which version of Visual Studio is the Remote Debugger compatible with?
  final String remoteDebuggingVersion;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final List<GetAppServiceSiteConfigScmIpRestriction> scmIpRestrictions;
  /// The type of Source Control enabled for this App Service.
  final String scmType;
  /// IP security restrictions for scm to use main.
  final bool scmUseMainIpRestriction;
  /// Does the App Service run in 32 bit mode, rather than 64 bit mode?
  final bool use32BitWorkerProcess;
  /// (Optional) Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied?
  final bool vnetRouteAllEnabled;
  /// Are WebSockets enabled for this App Service?
  final bool websocketsEnabled;
  /// Windows Container Docker Image for the AppService.
  final String windowsFxVersion;

  /// Creates a new [GetAppServiceSiteConfig].
  /// [acrUseManagedIdentityCredentials] Are Managed Identity Credentials used for Azure Container Registry pull.
  /// [acrUserManagedIdentityClientId] The User Managed Identity Client Id.
  /// [alwaysOn] Is the app loaded at all times?
  /// [appCommandLine] App command line to launch.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] The ordering of default documents to load, if an address isn't specified.
  /// [dotnetFrameworkVersion] The version of the .NET framework's CLR used in this App Service.
  /// [ftpsState] State of FTP / FTPS service for this AppService.
  /// [healthCheckPath] The health check path to be pinged by App Service.
  /// [http2Enabled] Is HTTP2 Enabled on this App Service?
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [javaContainer] The Java Container in use.
  /// [javaContainerVersion] The version of the Java Container in use.
  /// [javaVersion] The version of Java in use.
  /// [linuxFxVersion] Linux App Framework and version for the AppService.
  /// [localMysqlEnabled] Is "MySQL In App" Enabled? This runs a local MySQL instance with your app and shares resources from the App Service plan.
  /// [managedPipelineMode] The Managed Pipeline Mode used in this App Service.
  /// [minTlsVersion] The minimum supported TLS version for this App Service.
  /// [numberOfWorkers] The scaled number of workers (for per site scaling) of this App Service.
  /// [phpVersion] The version of PHP used in this App Service.
  /// [pythonVersion] The version of Python used in this App Service.
  /// [remoteDebuggingEnabled] Is Remote Debugging Enabled in this App Service?
  /// [remoteDebuggingVersion] Which version of Visual Studio is the Remote Debugger compatible with?
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmType] The type of Source Control enabled for this App Service.
  /// [scmUseMainIpRestriction] IP security restrictions for scm to use main.
  /// [use32BitWorkerProcess] Does the App Service run in 32 bit mode, rather than 64 bit mode?
  /// [vnetRouteAllEnabled] (Optional) Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are WebSockets enabled for this App Service?
  /// [windowsFxVersion] Windows Container Docker Image for the AppService.
  GetAppServiceSiteConfig({
    required this.acrUseManagedIdentityCredentials,
    required this.acrUserManagedIdentityClientId,
    required this.alwaysOn,
    required this.appCommandLine,
    required this.cors,
    required this.defaultDocuments,
    required this.dotnetFrameworkVersion,
    required this.ftpsState,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictions,
    required this.javaContainer,
    required this.javaContainerVersion,
    required this.javaVersion,
    required this.linuxFxVersion,
    required this.localMysqlEnabled,
    required this.managedPipelineMode,
    required this.minTlsVersion,
    required this.numberOfWorkers,
    required this.phpVersion,
    required this.pythonVersion,
    required this.remoteDebuggingEnabled,
    required this.remoteDebuggingVersion,
    required this.scmIpRestrictions,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorkerProcess,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
    required this.windowsFxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrUseManagedIdentityCredentials': acrUseManagedIdentityCredentials,
      'acrUserManagedIdentityClientId': acrUserManagedIdentityClientId,
      'alwaysOn': alwaysOn,
      'appCommandLine': appCommandLine,
      'cors': pulumi.Input.encodeList<GetAppServiceSiteConfigCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': defaultDocuments,
      'dotnetFrameworkVersion': dotnetFrameworkVersion,
      'ftpsState': ftpsState,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictions': pulumi.Input.encodeList<GetAppServiceSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions, (value) => value.toMap()),
      'javaContainer': javaContainer,
      'javaContainerVersion': javaContainerVersion,
      'javaVersion': javaVersion,
      'linuxFxVersion': linuxFxVersion,
      'localMysqlEnabled': localMysqlEnabled,
      'managedPipelineMode': managedPipelineMode,
      'minTlsVersion': minTlsVersion,
      'numberOfWorkers': numberOfWorkers,
      'phpVersion': phpVersion,
      'pythonVersion': pythonVersion,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'scmIpRestrictions': pulumi.Input.encodeList<GetAppServiceSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions, (value) => value.toMap()),
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorkerProcess': use32BitWorkerProcess,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'windowsFxVersion': windowsFxVersion,
    };
  }

  factory GetAppServiceSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteConfig(
      acrUseManagedIdentityCredentials: map['acrUseManagedIdentityCredentials'] as bool,
      acrUserManagedIdentityClientId: map['acrUserManagedIdentityClientId'] as String,
      alwaysOn: map['alwaysOn'] as bool,
      appCommandLine: map['appCommandLine'] as String,
      cors: pulumi.Input.decodeList<GetAppServiceSiteConfigCor>(map['cors'], (value) => GetAppServiceSiteConfigCor.fromMap((value as Map).cast<String, dynamic>())),
      defaultDocuments: (map['defaultDocuments'] as List).cast<String>(),
      dotnetFrameworkVersion: map['dotnetFrameworkVersion'] as String,
      ftpsState: map['ftpsState'] as String,
      healthCheckPath: map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] as bool,
      ipRestrictions: pulumi.Input.decodeList<GetAppServiceSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetAppServiceSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      javaContainer: map['javaContainer'] as String,
      javaContainerVersion: map['javaContainerVersion'] as String,
      javaVersion: map['javaVersion'] as String,
      linuxFxVersion: map['linuxFxVersion'] as String,
      localMysqlEnabled: map['localMysqlEnabled'] as bool,
      managedPipelineMode: map['managedPipelineMode'] as String,
      minTlsVersion: map['minTlsVersion'] as String,
      numberOfWorkers: map['numberOfWorkers'] as int,
      phpVersion: map['phpVersion'] as String,
      pythonVersion: map['pythonVersion'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] as String,
      scmIpRestrictions: pulumi.Input.decodeList<GetAppServiceSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetAppServiceSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmType: map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] as bool,
      use32BitWorkerProcess: map['use32BitWorkerProcess'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] as bool,
      windowsFxVersion: map['windowsFxVersion'] as String,
    );
  }
}

