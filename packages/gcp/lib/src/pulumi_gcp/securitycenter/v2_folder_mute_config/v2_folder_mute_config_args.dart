// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for V2FolderMuteConfig.
class V2FolderMuteConfigArgs {
  /// A description of the mute config.
  final Input<String>? description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final Input<String> filter;

  /// The folder whose Cloud Security Command Center the Mute
  /// Config lives in.
  final Input<String> folder;

  /// location Id is provided by folder. If not provided, Use global as default.
  final Input<String>? location;

  /// Unique identifier provided by the client within the parent scope.
  final Input<String> muteConfigId;

  /// The type of the mute config.
  final Input<String> type;

  V2FolderMuteConfigArgs({
    this.description,
    required this.filter,
    required this.folder,
    this.location,
    required this.muteConfigId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filter'] = filter;
    map['folder'] = folder;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['muteConfigId'] = muteConfigId;
    map['type'] = type;
    return map;
  }

  factory V2FolderMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2FolderMuteConfigArgs(
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asInput<String>(map['filter']),
      folder: Input.asInput<String>(map['folder']),
      location: Input.asOptionalInput<String>(map['location']),
      muteConfigId: Input.asInput<String>(map['muteConfigId']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
