// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding.dart';
import 'directory_path.dart';
import 'iisapplication_details.dart';
import 'iisvirtual_application_details.dart';
import 'iisweb_server.dart';
import 'resource_requirements.dart';
import 'web_application_configuration.dart';
import 'web_application_directory.dart';
import 'web_application_framework.dart';

/// IISWeb application.
class IISWebApplication {
  /// Gets or sets the web application id.
  final String? applicationId;
  /// Gets or sets the web application name.
  final String? applicationName;
  /// Gets or sets application scratch path.
  final String? applicationScratchPath;
  /// Gets or sets the list of applications for the IIS web site.
  final List<IISApplicationDetails>? applications;
  /// Gets or sets the bindings for the application.
  final List<Binding>? bindings;
  /// Gets or sets application configuration.
  final List<WebApplicationConfiguration>? configurations;
  /// Gets or sets application directories.
  final List<WebApplicationDirectory>? directories;
  /// Gets or sets the discovered frameworks of application.
  final List<WebApplicationFramework>? discoveredFrameworks;
  /// Gets or sets the display name.
  final String? displayName;
  /// IISWeb server.
  final IISWebServer? iisWebServer;
  /// Resource Requirements.
  final ResourceRequirements? limits;
  /// Second level entity for virtual directories.
  final DirectoryPath? path;
  /// Framework specific data for a web application.
  final WebApplicationFramework? primaryFramework;
  /// Resource Requirements.
  final ResourceRequirements? requests;
  /// Gets or sets the list of application units for the web site.
  final List<IISVirtualApplicationDetails>? virtualApplications;
  /// Gets or sets the web server id.
  final String? webServerId;
  /// Gets or sets the web server name.
  final String? webServerName;

  /// Creates a new [IISWebApplication].
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
  IISWebApplication({
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
      'applications': ?applications == null ? null : pulumi.Input.encodeList<IISApplicationDetails, Map<String, dynamic>>(applications!, (value) => value.toMap()),
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<Binding, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<WebApplicationConfiguration, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'directories': ?directories == null ? null : pulumi.Input.encodeList<WebApplicationDirectory, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'discoveredFrameworks': ?discoveredFrameworks == null ? null : pulumi.Input.encodeList<WebApplicationFramework, Map<String, dynamic>>(discoveredFrameworks!, (value) => value.toMap()),
      'displayName': ?displayName,
      'iisWebServer': ?iisWebServer == null ? null : iisWebServer!.toMap(),
      'limits': ?limits == null ? null : limits!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'primaryFramework': ?primaryFramework == null ? null : primaryFramework!.toMap(),
      'requests': ?requests == null ? null : requests!.toMap(),
      'virtualApplications': ?virtualApplications == null ? null : pulumi.Input.encodeList<IISVirtualApplicationDetails, Map<String, dynamic>>(virtualApplications!, (value) => value.toMap()),
      'webServerId': ?webServerId,
      'webServerName': ?webServerName,
    };
  }

  factory IISWebApplication.fromMap(Map<String, dynamic> map) {
    return IISWebApplication(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      applicationScratchPath: map['applicationScratchPath'] == null ? null : map['applicationScratchPath'] as String,
      applications: map['applications'] == null ? null : pulumi.Input.decodeList<IISApplicationDetails>(map['applications'], (value) => IISApplicationDetails.fromMap((value as Map).cast<String, dynamic>())),
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<Binding>(map['bindings'], (value) => Binding.fromMap((value as Map).cast<String, dynamic>())),
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<WebApplicationConfiguration>(map['configurations'], (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<WebApplicationDirectory>(map['directories'], (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>())),
      discoveredFrameworks: map['discoveredFrameworks'] == null ? null : pulumi.Input.decodeList<WebApplicationFramework>(map['discoveredFrameworks'], (value) => WebApplicationFramework.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      iisWebServer: map['iisWebServer'] == null ? null : IISWebServer.fromMap((map['iisWebServer'] as Map).cast<String, dynamic>()),
      limits: map['limits'] == null ? null : ResourceRequirements.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : DirectoryPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
      primaryFramework: map['primaryFramework'] == null ? null : WebApplicationFramework.fromMap((map['primaryFramework'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : ResourceRequirements.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      virtualApplications: map['virtualApplications'] == null ? null : pulumi.Input.decodeList<IISVirtualApplicationDetails>(map['virtualApplications'], (value) => IISVirtualApplicationDetails.fromMap((value as Map).cast<String, dynamic>())),
      webServerId: map['webServerId'] == null ? null : map['webServerId'] as String,
      webServerName: map['webServerName'] == null ? null : map['webServerName'] as String,
    );
  }
}

