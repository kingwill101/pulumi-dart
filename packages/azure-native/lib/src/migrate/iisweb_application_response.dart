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
  final String? applicationId;
  /// Gets or sets the web application name.
  final String? applicationName;
  /// Gets or sets application scratch path.
  final String? applicationScratchPath;
  /// Gets or sets the list of applications for the IIS web site.
  final List<IISApplicationDetailsResponse>? applications;
  /// Gets or sets the bindings for the application.
  final List<BindingResponse>? bindings;
  /// Gets or sets application configuration.
  final List<WebApplicationConfigurationResponse>? configurations;
  /// Gets or sets application directories.
  final List<WebApplicationDirectoryResponse>? directories;
  /// Gets or sets the discovered frameworks of application.
  final List<WebApplicationFrameworkResponse>? discoveredFrameworks;
  /// Gets or sets the display name.
  final String? displayName;
  /// IISWeb server.
  final IISWebServerResponse? iisWebServer;
  /// Resource Requirements.
  final ResourceRequirementsResponse? limits;
  /// Second level entity for virtual directories.
  final DirectoryPathResponse? path;
  /// Framework specific data for a web application.
  final WebApplicationFrameworkResponse? primaryFramework;
  /// Resource Requirements.
  final ResourceRequirementsResponse? requests;
  /// Gets or sets the list of application units for the web site.
  final List<IISVirtualApplicationDetailsResponse>? virtualApplications;
  /// Gets or sets the web server id.
  final String? webServerId;
  /// Gets or sets the web server name.
  final String? webServerName;

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
      'applications': ?applications == null ? null : pulumi.Input.encodeList<IISApplicationDetailsResponse, Map<String, dynamic>>(applications!, (value) => value.toMap()),
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<BindingResponse, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<WebApplicationConfigurationResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'directories': ?directories == null ? null : pulumi.Input.encodeList<WebApplicationDirectoryResponse, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'discoveredFrameworks': ?discoveredFrameworks == null ? null : pulumi.Input.encodeList<WebApplicationFrameworkResponse, Map<String, dynamic>>(discoveredFrameworks!, (value) => value.toMap()),
      'displayName': ?displayName,
      'iisWebServer': ?iisWebServer == null ? null : iisWebServer!.toMap(),
      'limits': ?limits == null ? null : limits!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'primaryFramework': ?primaryFramework == null ? null : primaryFramework!.toMap(),
      'requests': ?requests == null ? null : requests!.toMap(),
      'virtualApplications': ?virtualApplications == null ? null : pulumi.Input.encodeList<IISVirtualApplicationDetailsResponse, Map<String, dynamic>>(virtualApplications!, (value) => value.toMap()),
      'webServerId': ?webServerId,
      'webServerName': ?webServerName,
    };
  }

  factory IISWebApplicationResponse.fromMap(Map<String, dynamic> map) {
    return IISWebApplicationResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      applicationScratchPath: map['applicationScratchPath'] == null ? null : map['applicationScratchPath'] as String,
      applications: map['applications'] == null ? null : pulumi.Input.decodeList<IISApplicationDetailsResponse>(map['applications'], (value) => IISApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<BindingResponse>(map['bindings'], (value) => BindingResponse.fromMap((value as Map).cast<String, dynamic>())),
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<WebApplicationConfigurationResponse>(map['configurations'], (value) => WebApplicationConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<WebApplicationDirectoryResponse>(map['directories'], (value) => WebApplicationDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      discoveredFrameworks: map['discoveredFrameworks'] == null ? null : pulumi.Input.decodeList<WebApplicationFrameworkResponse>(map['discoveredFrameworks'], (value) => WebApplicationFrameworkResponse.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      iisWebServer: map['iisWebServer'] == null ? null : IISWebServerResponse.fromMap((map['iisWebServer'] as Map).cast<String, dynamic>()),
      limits: map['limits'] == null ? null : ResourceRequirementsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : DirectoryPathResponse.fromMap((map['path'] as Map).cast<String, dynamic>()),
      primaryFramework: map['primaryFramework'] == null ? null : WebApplicationFrameworkResponse.fromMap((map['primaryFramework'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : ResourceRequirementsResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      virtualApplications: map['virtualApplications'] == null ? null : pulumi.Input.decodeList<IISVirtualApplicationDetailsResponse>(map['virtualApplications'], (value) => IISVirtualApplicationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      webServerId: map['webServerId'] == null ? null : map['webServerId'] as String,
      webServerName: map['webServerName'] == null ? null : map['webServerName'] as String,
    );
  }
}

