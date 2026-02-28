// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_mute_config_args_doc}
/// Arguments for getMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_mute_config_args_doc}
class GetMuteConfigArgs {
  final pulumi.Input<String> muteConfigId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMuteConfigArgs].
  /// [muteConfigId] Required.
  /// [project] Optional.
  GetMuteConfigArgs({
    required String muteConfigId,
    String? project,
  })  : muteConfigId = pulumi.Input.asInput<String>(muteConfigId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['muteConfigId'] = muteConfigId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetMuteConfigArgs(
      muteConfigId: map['muteConfigId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
