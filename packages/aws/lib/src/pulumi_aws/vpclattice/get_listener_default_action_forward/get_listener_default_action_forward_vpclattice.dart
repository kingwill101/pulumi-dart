// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_forward_target_group/get_listener_default_action_forward_target_group_vpclattice.dart';

class GetListenerDefaultActionForwardVpclattice {
  final List<GetListenerDefaultActionForwardTargetGroupVpclattice> targetGroups;

  GetListenerDefaultActionForwardVpclattice({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroups'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardTargetGroupVpclattice,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionForwardVpclattice.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardVpclattice(
      targetGroups: pulumi.Input.decodeList<
              GetListenerDefaultActionForwardTargetGroupVpclattice>(
          map['targetGroups'],
          (value) =>
              GetListenerDefaultActionForwardTargetGroupVpclattice.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
