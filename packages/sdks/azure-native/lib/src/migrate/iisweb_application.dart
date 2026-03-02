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
  final pulumi.Input<String>? applicationId;
  /// Gets or sets the web application name.
  final pulumi.Input<String>? applicationName;
  /// Gets or sets application scratch path.
  final pulumi.Input<String>? applicationScratchPath;
  /// Gets or sets the list of applications for the IIS web site.
  final pulumi.Input<List<IISApplicationDetails>>? applications;
  /// Gets or sets the bindings for the application.
  final pulumi.Input<List<Binding>>? bindings;
  /// Gets or sets application configuration.
  final pulumi.Input<List<WebApplicationConfiguration>>? configurations;
  /// Gets or sets application directories.
  final pulumi.Input<List<WebApplicationDirectory>>? directories;
  /// Gets or sets the discovered frameworks of application.
  final pulumi.Input<List<WebApplicationFramework>>? discoveredFrameworks;
  /// Gets or sets the display name.
  final pulumi.Input<String>? displayName;
  /// IISWeb server.
  final pulumi.Input<IISWebServer>? iisWebServer;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirements>? limits;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPath>? path;
  /// Framework specific data for a web application.
  final pulumi.Input<WebApplicationFramework>? primaryFramework;
  /// Resource Requirements.
  final pulumi.Input<ResourceRequirements>? requests;
  /// Gets or sets the list of application units for the web site.
  final pulumi.Input<List<IISVirtualApplicationDetails>>? virtualApplications;
  /// Gets or sets the web server id.
  final pulumi.Input<String>? webServerId;
  /// Gets or sets the web server name.
  final pulumi.Input<String>? webServerName;

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
      'applications': ?pulumi.Input.mapOptionalInputValue<List<IISApplicationDetails>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<IISApplicationDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<Binding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<Binding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<WebApplicationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'directories': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationDirectory>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<WebApplicationDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveredFrameworks': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationFramework>, List<Map<String, dynamic>>>(discoveredFrameworks, (value) => pulumi.Input.encodeList<WebApplicationFramework, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'iisWebServer': ?pulumi.Input.mapOptionalInputValue<IISWebServer, Map<String, dynamic>>(iisWebServer, (value) => value.toMap()),
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<DirectoryPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'primaryFramework': ?pulumi.Input.mapOptionalInputValue<WebApplicationFramework, Map<String, dynamic>>(primaryFramework, (value) => value.toMap()),
      'requests': ?pulumi.Input.mapOptionalInputValue<ResourceRequirements, Map<String, dynamic>>(requests, (value) => value.toMap()),
      'virtualApplications': ?pulumi.Input.mapOptionalInputValue<List<IISVirtualApplicationDetails>, List<Map<String, dynamic>>>(virtualApplications, (value) => pulumi.Input.encodeList<IISVirtualApplicationDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServerId': ?webServerId,
      'webServerName': ?webServerName,
    };
  }

  factory IISWebApplication.fromMap(Map<String, dynamic> map) {
    return IISWebApplication(
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      applicationScratchPath: map['applicationScratchPath'] == null ? null : (map['applicationScratchPath']! as String).input(),
      applications: map['applications'] == null ? null : (pulumi.Input.decodeList<IISApplicationDetails>(map['applications']!, (value) => IISApplicationDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<Binding>(map['bindings']!, (value) => Binding.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurations: map['configurations'] == null ? null : (pulumi.Input.decodeList<WebApplicationConfiguration>(map['configurations']!, (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<WebApplicationDirectory>(map['directories']!, (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      discoveredFrameworks: map['discoveredFrameworks'] == null ? null : (pulumi.Input.decodeList<WebApplicationFramework>(map['discoveredFrameworks']!, (value) => WebApplicationFramework.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      iisWebServer: map['iisWebServer'] == null ? null : (IISWebServer.fromMap((map['iisWebServer']! as Map).cast<String, dynamic>())).input(),
      limits: map['limits'] == null ? null : (ResourceRequirements.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (DirectoryPath.fromMap((map['path']! as Map).cast<String, dynamic>())).input(),
      primaryFramework: map['primaryFramework'] == null ? null : (WebApplicationFramework.fromMap((map['primaryFramework']! as Map).cast<String, dynamic>())).input(),
      requests: map['requests'] == null ? null : (ResourceRequirements.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
      virtualApplications: map['virtualApplications'] == null ? null : (pulumi.Input.decodeList<IISVirtualApplicationDetails>(map['virtualApplications']!, (value) => IISVirtualApplicationDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServerId: map['webServerId'] == null ? null : (map['webServerId']! as String).input(),
      webServerName: map['webServerName'] == null ? null : (map['webServerName']! as String).input(),
    );
  }
}

