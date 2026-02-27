// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMuteConfig.
class GetMuteConfigArgs {
  final pulumi.Input<String> muteConfigId;
  final pulumi.Input<String>? project;

  GetMuteConfigArgs({
    required this.muteConfigId,
    this.project,
  });

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
      muteConfigId: pulumi.Input.asInput<String>(map['muteConfigId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
