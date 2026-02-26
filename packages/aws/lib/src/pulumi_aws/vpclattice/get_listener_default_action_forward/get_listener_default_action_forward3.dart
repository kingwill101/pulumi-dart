// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action_forward_target_group/get_listener_default_action_forward_target_group3.dart';

class GetListenerDefaultActionForward3 {
  final List<GetListenerDefaultActionForwardTargetGroup3> targetGroups;

  GetListenerDefaultActionForward3({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroups'] = Input.encodeList<
        GetListenerDefaultActionForwardTargetGroup3,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionForward3.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForward3(
      targetGroups:
          Input.decodeList<GetListenerDefaultActionForwardTargetGroup3>(
              map['targetGroups'],
              (value) => GetListenerDefaultActionForwardTargetGroup3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
