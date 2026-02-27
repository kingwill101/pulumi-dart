// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for V2ProjectMuteConfig.
class V2ProjectMuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;

  /// location Id is provided by project. If not provided, Use global as default.
  final pulumi.Input<String>? location;

  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The type of the mute config.
  final pulumi.Input<String> type;

  V2ProjectMuteConfigArgs({
    this.description,
    required this.filter,
    this.location,
    required this.muteConfigId,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filter'] = filter;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['muteConfigId'] = muteConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory V2ProjectMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2ProjectMuteConfigArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      muteConfigId: pulumi.Input.asInput<String>(map['muteConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
