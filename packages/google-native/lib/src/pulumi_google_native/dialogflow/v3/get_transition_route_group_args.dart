// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTransitionRouteGroup.
class GetTransitionRouteGroupArgs {
  final Input<String> agentId;
  final Input<String> flowId;
  final Input<String>? languageCode;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> transitionRouteGroupId;

  GetTransitionRouteGroupArgs({
    required this.agentId,
    required this.flowId,
    this.languageCode,
    required this.location,
    this.project,
    required this.transitionRouteGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['flowId'] = flowId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['transitionRouteGroupId'] = transitionRouteGroupId;
    return map;
  }

  factory GetTransitionRouteGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupArgs(
      agentId: Input.asInput<String>(map['agentId']),
      flowId: Input.asInput<String>(map['flowId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      transitionRouteGroupId:
          Input.asInput<String>(map['transitionRouteGroupId']),
    );
  }
}
