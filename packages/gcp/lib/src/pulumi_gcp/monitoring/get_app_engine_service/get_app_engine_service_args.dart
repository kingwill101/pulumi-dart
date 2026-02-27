// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAppEngineService.
class GetAppEngineServiceArgs {
  /// The ID of the App Engine module underlying this
  /// service. Corresponds to the moduleId resource label in the [gae_app](https://cloud.google.com/monitoring/api/resources#tag_gae_app) monitored resource, or the service/module name.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final Input<String> moduleId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  GetAppEngineServiceArgs({
    required this.moduleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['moduleId'] = moduleId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAppEngineServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceArgs(
      moduleId: Input.asInput<String>(map['moduleId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
