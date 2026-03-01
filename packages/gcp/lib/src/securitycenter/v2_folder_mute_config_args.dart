// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_folder_mute_config_v2_folder_mute_config_args_doc}
/// The set of arguments for V2FolderMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_folder_mute_config_v2_folder_mute_config_args_doc}
class V2FolderMuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;
  /// The folder whose Cloud Security Command Center the Mute
  /// Config lives in.
  final pulumi.Input<String> folder;
  /// location Id is provided by folder. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;
  /// The type of the mute config.
  final pulumi.Input<String> type;

  /// Creates a new [V2FolderMuteConfigArgs].
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [folder] The folder whose Cloud Security Command Center the Mute
  /// [location] location Id is provided by folder. If not provided, Use global as default.
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [type] The type of the mute config.
  V2FolderMuteConfigArgs({
    String? description,
    required String filter,
    required String folder,
    String? location,
    required String muteConfigId,
    required String type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asInput<String>(filter),
      folder = pulumi.Input.asInput<String>(folder),
      location = pulumi.Input.asOptionalInput<String>(location),
      muteConfigId = pulumi.Input.asInput<String>(muteConfigId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filter': filter,
      'folder': folder,
      'location': ?location,
      'muteConfigId': muteConfigId,
      'type': type,
    };
  }

  factory V2FolderMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2FolderMuteConfigArgs(
      description: map['description'] == null ? null : map['description'] as String,
      filter: map['filter'] as String,
      folder: map['folder'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      muteConfigId: map['muteConfigId'] as String,
      type: map['type'] as String,
    );
  }
}

