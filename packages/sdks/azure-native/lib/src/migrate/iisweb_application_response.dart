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
  IISWebApplicationResponse({
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
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      applicationScratchPath: map['applicationScratchPath'] == null ? null : (map['applicationScratchPath']! as String).input(),
      applications: map['applications'] == null ? null : (pulumi.Input.decodeList<IISApplicationDetailsResponse>(map['applications']!, (value) => IISApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<BindingResponse>(map['bindings']!, (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<WebApplicationConfigurationResponse>(map['configurations']!, (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<WebApplicationDirectoryResponse>(map['directories']!, (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discoveredFrameworks: map['discoveredFrameworks'] == null ? null : (pulumi.Input.decodeList<WebApplicationFrameworkResponse>(map['discoveredFrameworks']!, (value) => WebApplicationFrameworkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      iisWebServer: map['iisWebServer'] == null ? null : (IISWebServerResponse.fromMap((map['iisWebServer']! as Map).cast<String, dynamic>())).input(),
      limits: map['limits'] == null ? null : (ResourceRequirementsResponse.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (DirectoryPathResponse.fromMap((map['path']! as Map).cast<String, dynamic>())).input(),
      primaryFramework: map['primaryFramework'] == null ? null : (WebApplicationFrameworkResponse.fromMap((map['primaryFramework']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (ResourceRequirementsResponse.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
      virtualApplications: map['virtualApplications'] == null ? null : (pulumi.Input.decodeList<IISVirtualApplicationDetailsResponse>(map['virtualApplications']!, (value) => IISVirtualApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServerId: map['webServerId'] == null ? null : (map['webServerId']! as String).input(),
      webServerName: map['webServerName'] == null ? null : (map['webServerName']! as String).input(),
    );
  }
}

