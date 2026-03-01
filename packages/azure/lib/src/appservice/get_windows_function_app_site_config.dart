// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_site_config_app_service_log.dart';
import 'get_windows_function_app_site_config_application_stack.dart';
import 'get_windows_function_app_site_config_cor.dart';
import 'get_windows_function_app_site_config_ip_restriction.dart';
import 'get_windows_function_app_site_config_scm_ip_restriction.dart';

class GetWindowsFunctionAppSiteConfig {
  /// Is this Windows Function App Always On?.
  final bool alwaysOn;
  /// The URL of the API definition that describes this Windows Function App.
  final String apiDefinitionUrl;
  /// The ID of the API Management API for this Windows Function App.
  final String apiManagementApiId;
  /// The App command line to launch.
  final String appCommandLine;
  /// The number of workers this function app can scale out to.
  final int appScaleLimit;
  /// A `app_service_logs` block as defined above.
  final List<GetWindowsFunctionAppSiteConfigAppServiceLog> appServiceLogs;
  /// The Connection String for linking the Windows Function App to Application Insights.
  final String applicationInsightsConnectionString;
  /// The Instrumentation Key for connecting the Windows Function App to Application Insights.
  final String applicationInsightsKey;
  /// A `application_stack` block as defined above.
  final List<GetWindowsFunctionAppSiteConfigApplicationStack> applicationStacks;
  /// A `cors` block as defined above.
  final List<GetWindowsFunctionAppSiteConfigCor> cors;
  /// A list of Default Documents for the Windows Web App.
  final List<String> defaultDocuments;
  /// Is detailed error logging enabled?
  final bool detailedErrorLoggingEnabled;
  /// The number of minimum instances for this Windows Function App.
  final int elasticInstanceMinimum;
  /// State of FTP / FTPS service for this Windows Function App.
  final String ftpsState;
  /// The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  final int healthCheckEvictionTimeInMin;
  /// The path to be checked for this Windows Function App health.
  final String healthCheckPath;
  /// Is the HTTP2 protocol enabled?
  final bool http2Enabled;
  /// The Default action for traffic that does not match any `ip_restriction` rule.
  final String ipRestrictionDefaultAction;
  /// One or more `ip_restriction` blocks as defined above.
  final List<GetWindowsFunctionAppSiteConfigIpRestriction> ipRestrictions;
  /// The Site load balancing mode.
  final String loadBalancingMode;
  /// The Managed pipeline mode.
  final String managedPipelineMode;
  /// The minimum version of TLS required for SSL requests.
  final String minimumTlsVersion;
  /// The number of pre-warmed instances for this Windows Function App.
  final int preWarmedInstanceCount;
  /// Is Remote Debugging enabled?
  final bool remoteDebuggingEnabled;
  /// The Remote Debugging Version.
  final String remoteDebuggingVersion;
  /// Is Scale Monitoring of the Functions Runtime enabled?
  final bool runtimeScaleMonitoringEnabled;
  /// The Default action for traffic that does not match any `scm_ip_restriction` rule.
  final String scmIpRestrictionDefaultAction;
  /// One or more `scm_ip_restriction` blocks as defined above.
  final List<GetWindowsFunctionAppSiteConfigScmIpRestriction> scmIpRestrictions;
  /// The minimum version of TLS required for SSL requests to the SCM site.
  final String scmMinimumTlsVersion;
  /// The SCM type.
  final String scmType;
  /// Is the `ip_restriction` configuration used for the SCM?.
  final bool scmUseMainIpRestriction;
  /// Is the Windows Function App using a 32-bit worker process?
  final bool use32BitWorker;
  /// Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  final bool vnetRouteAllEnabled;
  /// Are Web Sockets enabled?
  final bool websocketsEnabled;
  /// The Windows FX version.
  final String windowsFxVersion;
  /// The number of Workers for this Windows Function App.
  final int workerCount;

  /// Creates a new [GetWindowsFunctionAppSiteConfig].
  /// [alwaysOn] Is this Windows Function App Always On?.
  /// [apiDefinitionUrl] The URL of the API definition that describes this Windows Function App.
  /// [apiManagementApiId] The ID of the API Management API for this Windows Function App.
  /// [appCommandLine] The App command line to launch.
  /// [appScaleLimit] The number of workers this function app can scale out to.
  /// [appServiceLogs] A `app_service_logs` block as defined above.
  /// [applicationInsightsConnectionString] The Connection String for linking the Windows Function App to Application Insights.
  /// [applicationInsightsKey] The Instrumentation Key for connecting the Windows Function App to Application Insights.
  /// [applicationStacks] A `application_stack` block as defined above.
  /// [cors] A `cors` block as defined above.
  /// [defaultDocuments] A list of Default Documents for the Windows Web App.
  /// [detailedErrorLoggingEnabled] Is detailed error logging enabled?
  /// [elasticInstanceMinimum] The number of minimum instances for this Windows Function App.
  /// [ftpsState] State of FTP / FTPS service for this Windows Function App.
  /// [healthCheckEvictionTimeInMin] The amount of time in minutes that a node can be unhealthy before being removed from the load balancer.
  /// [healthCheckPath] The path to be checked for this Windows Function App health.
  /// [http2Enabled] Is the HTTP2 protocol enabled?
  /// [ipRestrictionDefaultAction] The Default action for traffic that does not match any `ip_restriction` rule.
  /// [ipRestrictions] One or more `ip_restriction` blocks as defined above.
  /// [loadBalancingMode] The Site load balancing mode.
  /// [managedPipelineMode] The Managed pipeline mode.
  /// [minimumTlsVersion] The minimum version of TLS required for SSL requests.
  /// [preWarmedInstanceCount] The number of pre-warmed instances for this Windows Function App.
  /// [remoteDebuggingEnabled] Is Remote Debugging enabled?
  /// [remoteDebuggingVersion] The Remote Debugging Version.
  /// [runtimeScaleMonitoringEnabled] Is Scale Monitoring of the Functions Runtime enabled?
  /// [scmIpRestrictionDefaultAction] The Default action for traffic that does not match any `scm_ip_restriction` rule.
  /// [scmIpRestrictions] One or more `scm_ip_restriction` blocks as defined above.
  /// [scmMinimumTlsVersion] The minimum version of TLS required for SSL requests to the SCM site.
  /// [scmType] The SCM type.
  /// [scmUseMainIpRestriction] Is the `ip_restriction` configuration used for the SCM?.
  /// [use32BitWorker] Is the Windows Function App using a 32-bit worker process?
  /// [vnetRouteAllEnabled] Are all outbound traffic to NAT Gateways, Network Security Groups and User Defined Routes applied?
  /// [websocketsEnabled] Are Web Sockets enabled?
  /// [windowsFxVersion] The Windows FX version.
  /// [workerCount] The number of Workers for this Windows Function App.
  GetWindowsFunctionAppSiteConfig({
    required this.alwaysOn,
    required this.apiDefinitionUrl,
    required this.apiManagementApiId,
    required this.appCommandLine,
    required this.appScaleLimit,
    required this.appServiceLogs,
    required this.applicationInsightsConnectionString,
    required this.applicationInsightsKey,
    required this.applicationStacks,
    required this.cors,
    required this.defaultDocuments,
    required this.detailedErrorLoggingEnabled,
    required this.elasticInstanceMinimum,
    required this.ftpsState,
    required this.healthCheckEvictionTimeInMin,
    required this.healthCheckPath,
    required this.http2Enabled,
    required this.ipRestrictionDefaultAction,
    required this.ipRestrictions,
    required this.loadBalancingMode,
    required this.managedPipelineMode,
    required this.minimumTlsVersion,
    required this.preWarmedInstanceCount,
    required this.remoteDebuggingEnabled,
    required this.remoteDebuggingVersion,
    required this.runtimeScaleMonitoringEnabled,
    required this.scmIpRestrictionDefaultAction,
    required this.scmIpRestrictions,
    required this.scmMinimumTlsVersion,
    required this.scmType,
    required this.scmUseMainIpRestriction,
    required this.use32BitWorker,
    required this.vnetRouteAllEnabled,
    required this.websocketsEnabled,
    required this.windowsFxVersion,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysOn': alwaysOn,
      'apiDefinitionUrl': apiDefinitionUrl,
      'apiManagementApiId': apiManagementApiId,
      'appCommandLine': appCommandLine,
      'appScaleLimit': appScaleLimit,
      'appServiceLogs': pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigAppServiceLog, Map<String, dynamic>>(appServiceLogs, (value) => value.toMap()),
      'applicationInsightsConnectionString': applicationInsightsConnectionString,
      'applicationInsightsKey': applicationInsightsKey,
      'applicationStacks': pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigApplicationStack, Map<String, dynamic>>(applicationStacks, (value) => value.toMap()),
      'cors': pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigCor, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'defaultDocuments': defaultDocuments,
      'detailedErrorLoggingEnabled': detailedErrorLoggingEnabled,
      'elasticInstanceMinimum': elasticInstanceMinimum,
      'ftpsState': ftpsState,
      'healthCheckEvictionTimeInMin': healthCheckEvictionTimeInMin,
      'healthCheckPath': healthCheckPath,
      'http2Enabled': http2Enabled,
      'ipRestrictionDefaultAction': ipRestrictionDefaultAction,
      'ipRestrictions': pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigIpRestriction, Map<String, dynamic>>(ipRestrictions, (value) => value.toMap()),
      'loadBalancingMode': loadBalancingMode,
      'managedPipelineMode': managedPipelineMode,
      'minimumTlsVersion': minimumTlsVersion,
      'preWarmedInstanceCount': preWarmedInstanceCount,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'remoteDebuggingVersion': remoteDebuggingVersion,
      'runtimeScaleMonitoringEnabled': runtimeScaleMonitoringEnabled,
      'scmIpRestrictionDefaultAction': scmIpRestrictionDefaultAction,
      'scmIpRestrictions': pulumi.Input.encodeList<GetWindowsFunctionAppSiteConfigScmIpRestriction, Map<String, dynamic>>(scmIpRestrictions, (value) => value.toMap()),
      'scmMinimumTlsVersion': scmMinimumTlsVersion,
      'scmType': scmType,
      'scmUseMainIpRestriction': scmUseMainIpRestriction,
      'use32BitWorker': use32BitWorker,
      'vnetRouteAllEnabled': vnetRouteAllEnabled,
      'websocketsEnabled': websocketsEnabled,
      'windowsFxVersion': windowsFxVersion,
      'workerCount': workerCount,
    };
  }

  factory GetWindowsFunctionAppSiteConfig.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfig(
      alwaysOn: map['alwaysOn'] as bool,
      apiDefinitionUrl: map['apiDefinitionUrl'] as String,
      apiManagementApiId: map['apiManagementApiId'] as String,
      appCommandLine: map['appCommandLine'] as String,
      appScaleLimit: map['appScaleLimit'] as int,
      appServiceLogs: pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigAppServiceLog>(map['appServiceLogs'], (value) => GetWindowsFunctionAppSiteConfigAppServiceLog.fromMap((value as Map).cast<String, dynamic>())),
      applicationInsightsConnectionString: map['applicationInsightsConnectionString'] as String,
      applicationInsightsKey: map['applicationInsightsKey'] as String,
      applicationStacks: pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigApplicationStack>(map['applicationStacks'], (value) => GetWindowsFunctionAppSiteConfigApplicationStack.fromMap((value as Map).cast<String, dynamic>())),
      cors: pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigCor>(map['cors'], (value) => GetWindowsFunctionAppSiteConfigCor.fromMap((value as Map).cast<String, dynamic>())),
      defaultDocuments: (map['defaultDocuments'] as List).cast<String>(),
      detailedErrorLoggingEnabled: map['detailedErrorLoggingEnabled'] as bool,
      elasticInstanceMinimum: map['elasticInstanceMinimum'] as int,
      ftpsState: map['ftpsState'] as String,
      healthCheckEvictionTimeInMin: map['healthCheckEvictionTimeInMin'] as int,
      healthCheckPath: map['healthCheckPath'] as String,
      http2Enabled: map['http2Enabled'] as bool,
      ipRestrictionDefaultAction: map['ipRestrictionDefaultAction'] as String,
      ipRestrictions: pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigIpRestriction>(map['ipRestrictions'], (value) => GetWindowsFunctionAppSiteConfigIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingMode: map['loadBalancingMode'] as String,
      managedPipelineMode: map['managedPipelineMode'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      preWarmedInstanceCount: map['preWarmedInstanceCount'] as int,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] as bool,
      remoteDebuggingVersion: map['remoteDebuggingVersion'] as String,
      runtimeScaleMonitoringEnabled: map['runtimeScaleMonitoringEnabled'] as bool,
      scmIpRestrictionDefaultAction: map['scmIpRestrictionDefaultAction'] as String,
      scmIpRestrictions: pulumi.Input.decodeList<GetWindowsFunctionAppSiteConfigScmIpRestriction>(map['scmIpRestrictions'], (value) => GetWindowsFunctionAppSiteConfigScmIpRestriction.fromMap((value as Map).cast<String, dynamic>())),
      scmMinimumTlsVersion: map['scmMinimumTlsVersion'] as String,
      scmType: map['scmType'] as String,
      scmUseMainIpRestriction: map['scmUseMainIpRestriction'] as bool,
      use32BitWorker: map['use32BitWorker'] as bool,
      vnetRouteAllEnabled: map['vnetRouteAllEnabled'] as bool,
      websocketsEnabled: map['websocketsEnabled'] as bool,
      windowsFxVersion: map['windowsFxVersion'] as String,
      workerCount: map['workerCount'] as int,
    );
  }
}

