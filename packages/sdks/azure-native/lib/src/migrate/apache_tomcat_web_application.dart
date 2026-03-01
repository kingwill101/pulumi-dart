// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding.dart';
import 'directory_path.dart';
import 'resource_requirements.dart';
import 'web_application_configuration.dart';
import 'web_application_directory.dart';
import 'web_application_framework.dart';

/// ApacheTomcat web application.
class ApacheTomcatWebApplication {
  /// Gets or sets the web application id.
  final String? applicationId;
  /// Gets or sets the web application name.
  final String? applicationName;
  /// Gets or sets application scratch path.
  final String? applicationScratchPath;
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
  /// Resource Requirements.
  final ResourceRequirements? limits;
  /// Second level entity for virtual directories.
  final DirectoryPath? path;
  /// Framework specific data for a web application.
  final WebApplicationFramework? primaryFramework;
  /// Resource Requirements.
  final ResourceRequirements? requests;
  /// Gets or sets the web server id.
  final String? webServerId;
  /// Gets or sets the web server name.
  final String? webServerName;

  /// Creates a new [ApacheTomcatWebApplication].
  /// [applicationId] Gets or sets the web application id.
  /// [applicationName] Gets or sets the web application name.
  /// [applicationScratchPath] Gets or sets application scratch path.
  /// [bindings] Gets or sets the bindings for the application.
  /// [configurations] Gets or sets application configuration.
  /// [directories] Gets or sets application directories.
  /// [discoveredFrameworks] Gets or sets the discovered frameworks of application.
  /// [displayName] Gets or sets the display name.
  /// [limits] Resource Requirements.
  /// [path] Second level entity for virtual directories.
  /// [primaryFramework] Framework specific data for a web application.
  /// [requests] Resource Requirements.
  /// [webServerId] Gets or sets the web server id.
  /// [webServerName] Gets or sets the web server name.
  ApacheTomcatWebApplication({
    this.applicationId,
    this.applicationName,
    this.applicationScratchPath,
    this.bindings,
    this.configurations,
    this.directories,
    this.discoveredFrameworks,
    this.displayName,
    this.limits,
    this.path,
    this.primaryFramework,
    this.requests,
    this.webServerId,
    this.webServerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'applicationName': ?applicationName,
      'applicationScratchPath': ?applicationScratchPath,
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<Binding, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<WebApplicationConfiguration, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'directories': ?directories == null ? null : pulumi.Input.encodeList<WebApplicationDirectory, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'discoveredFrameworks': ?discoveredFrameworks == null ? null : pulumi.Input.encodeList<WebApplicationFramework, Map<String, dynamic>>(discoveredFrameworks!, (value) => value.toMap()),
      'displayName': ?displayName,
      'limits': ?limits == null ? null : limits!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'primaryFramework': ?primaryFramework == null ? null : primaryFramework!.toMap(),
      'requests': ?requests == null ? null : requests!.toMap(),
      'webServerId': ?webServerId,
      'webServerName': ?webServerName,
    };
  }

  factory ApacheTomcatWebApplication.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatWebApplication(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      applicationScratchPath: map['applicationScratchPath'] == null ? null : map['applicationScratchPath'] as String,
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<Binding>(map['bindings'], (value) => Binding.fromMap((value as Map).cast<String, dynamic>())),
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<WebApplicationConfiguration>(map['configurations'], (value) => WebApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<WebApplicationDirectory>(map['directories'], (value) => WebApplicationDirectory.fromMap((value as Map).cast<String, dynamic>())),
      discoveredFrameworks: map['discoveredFrameworks'] == null ? null : pulumi.Input.decodeList<WebApplicationFramework>(map['discoveredFrameworks'], (value) => WebApplicationFramework.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      limits: map['limits'] == null ? null : ResourceRequirements.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : DirectoryPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
      primaryFramework: map['primaryFramework'] == null ? null : WebApplicationFramework.fromMap((map['primaryFramework'] as Map).cast<String, dynamic>()),
      requests: map['requests'] == null ? null : ResourceRequirements.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      webServerId: map['webServerId'] == null ? null : map['webServerId'] as String,
      webServerName: map['webServerName'] == null ? null : map['webServerName'] as String,
    );
  }
}

