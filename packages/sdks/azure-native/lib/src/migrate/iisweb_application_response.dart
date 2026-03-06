// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_response.dart';
import 'directory_path_response.dart';
import 'iisapplication_details_response.dart';
import 'iisvirtual_application_details_response.dart';
import 'iisweb_server_response.dart';
import 'resource_requirements_response.dart';
import 'web_application_configuration_response.dart';
import 'web_application_directory_response.dart';
import 'web_application_framework_response.dart';

/// IISWeb application.
class IISWebApplicationResponse {
  /// Gets or sets the web application id.
  final pulumi.Input<String>? applicationId;
  /// Gets or sets the web application name.
  final pulumi.Input<String>? applicationName;
  /// Gets or sets application scratch path.
  final pulumi.Input<String>? applicationScratchPath;
  /// Gets or sets the list of applications for the IIS web site.
  final pulumi.Input<List<IISApplicationDetailsResponse>>? applications;
  /// Gets or sets the bindings for the application.
  final pulumi.Input<List<BindingResponse>>? bindings;
  /// Gets or sets application configuration.
  final pulumi.Input<List<WebApplicationConfigurationResponse>>? configurations;
  /// Gets or sets application directories.
  final pulumi.Input<List<WebApplicationDirectoryResponse>>? directories;
  /// Gets or sets the discovered frameworks of application.
  final pulumi.Input<List<WebApplicationFrameworkResponse>>? discoveredFrameworks;
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// IISWeb server.
  final pulumi.Input<IISWebServerResponse>? iisWebServer;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse>? limits;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPathResponse>? path;
  /// Framework specific data for a web application.
  final pulumi.Input<WebApplicationFrameworkResponse>? primaryFramework;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirementsResponse>? requests;
  /// Gets or sets the list of application units for the web site.
  final pulumi.Input<List<IISVirtualApplicationDetailsResponse>>? virtualApplications;
  /// Gets or sets the web server id.
  final pulumi.Input<String>? webServerId;
  /// Gets or sets the web server name.
  final pulumi.Input<String>? webServerName;

  /// Creates a new [IISWebApplicationResponse].
  /// [applicationId] Gets or sets the web application id.
  /// [applicationName] Gets or sets the web application name.
  /// [applicationScratchPath] Gets or sets application scratch path.
  /// [applications] Gets or sets the list of applications for the IIS web site.
  /// [bindings] Gets or sets the bindings for the application.
  /// [configurations] Gets or sets application configuration.
  /// [directories] Gets or sets application directories.
  /// [discoveredFrameworks] Gets or sets the discovered frameworks of application.
  /// [displayName] Gets or sets the display name.
  /// [iisWebServer] IISWeb server.
  /// [limits] Resource Requirements.
  /// [path] Second level entity for virtual directories.
  /// [primaryFramework] Framework specific data for a web application.
  /// [requests] Resource Requirements.
  /// [virtualApplications] Gets or sets the list of application units for the web site.
  /// [webServerId] Gets or sets the web server id.
  /// [webServerName] Gets or sets the web server name.
  const IISWebApplicationResponse({
    this.applicationId,
    this.applicationName,
    this.applicationScratchPath,
    this.applications,
    this.bindings,
    this.configurations,
    this.directories,
    this.discoveredFrameworks,
    this.displayName,
    this.iisWebServer,
    this.limits,
    this.path,
    this.primaryFramework,
    this.requests,
    this.virtualApplications,
    this.webServerId,
    this.webServerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationName': ?applicationName,
      'applicationScratchPath': ?applicationScratchPath,
      'applications': ?pulumi.Input.mapOptionalInputValue<List<IISApplicationDetailsResponse>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<IISApplicationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingResponse>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationConfigurationResponse>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<WebApplicationConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'directories': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationDirectoryResponse>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<WebApplicationDirectoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveredFrameworks': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationFrameworkResponse>, List<Map<String, dynamic>>>(discoveredFrameworks, (value) => pulumi.Input.encodeList<WebApplicationFrameworkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'iisWebServer': ?pulumi.Input.mapOptionalInputValue<IISWebServerResponse, Map<String, dynamic>>(iisWebServer, (value) => value.toMap()),
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<DirectoryPathResponse, Map<String, dynamic>>(path, (value) => value.toMap()),
      'primaryFramework': ?pulumi.Input.mapOptionalInputValue<WebApplicationFrameworkResponse, Map<String, dynamic>>(primaryFramework, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<ResourceRequirementsResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'virtualApplications': ?pulumi.Input.mapOptionalInputValue<List<IISVirtualApplicationDetailsResponse>, List<Map<String, dynamic>>>(virtualApplications, (value) => pulumi.Input.encodeList<IISVirtualApplicationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServerId': ?webServerId,
      'webServerName': ?webServerName,
    };
  }

  factory IISWebApplicationResponse.fromMap(Map<String, dynamic> map) {
    return IISWebApplicationResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationScratchPath: (() { final guardedValue = map['applicationScratchPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IISApplicationDetailsResponse>(guardedValue, (value) => IISApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BindingResponse>(guardedValue, (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationConfigurationResponse>(guardedValue, (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      directories: (() { final guardedValue = map['directories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationDirectoryResponse>(guardedValue, (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveredFrameworks: (() { final guardedValue = map['discoveredFrameworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebApplicationFrameworkResponse>(guardedValue, (value) => WebApplicationFrameworkResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iisWebServer: (() { final guardedValue = map['iisWebServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IISWebServerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryPathResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryFramework: (() { final guardedValue = map['primaryFramework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebApplicationFrameworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualApplications: (() { final guardedValue = map['virtualApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IISVirtualApplicationDetailsResponse>(guardedValue, (value) => IISVirtualApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webServerId: (() { final guardedValue = map['webServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webServerName: (() { final guardedValue = map['webServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

