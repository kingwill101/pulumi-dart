// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_fixed_response/get_listener_default_action_fixed_response_vpclattice.dart';
import '../get_listener_default_action_forward/get_listener_default_action_forward_vpclattice.dart';

class GetListenerDefaultActionVpclattice {
  final List<GetListenerDefaultActionFixedResponseVpclattice> fixedResponses;
  final List<GetListenerDefaultActionForwardVpclattice> forwards;

  GetListenerDefaultActionVpclattice({
    required this.fixedResponses,
    required this.forwards,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedResponses'] = pulumi.Input.encodeList<
        GetListenerDefaultActionFixedResponseVpclattice,
        Map<String, dynamic>>(fixedResponses, (value) => value.toMap());
    map['forwards'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardVpclattice,
        Map<String, dynamic>>(forwards, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionVpclattice.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionVpclattice(
      fixedResponses: pulumi.Input.decodeList<
              GetListenerDefaultActionFixedResponseVpclattice>(
          map['fixedResponses'],
          (value) => GetListenerDefaultActionFixedResponseVpclattice.fromMap(
              (value as Map).cast<String, dynamic>())),
      forwards:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardVpclattice>(
              map['forwards'],
              (value) => GetListenerDefaultActionForwardVpclattice.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
