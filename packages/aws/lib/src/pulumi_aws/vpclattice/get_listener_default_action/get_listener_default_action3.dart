// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action_fixed_response/get_listener_default_action_fixed_response3.dart';
import '../get_listener_default_action_forward/get_listener_default_action_forward3.dart';

class GetListenerDefaultAction3 {
  final List<GetListenerDefaultActionFixedResponse3> fixedResponses;
  final List<GetListenerDefaultActionForward3> forwards;

  GetListenerDefaultAction3({
    required this.fixedResponses,
    required this.forwards,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedResponses'] = Input.encodeList<
        GetListenerDefaultActionFixedResponse3,
        Map<String, dynamic>>(fixedResponses, (value) => value.toMap());
    map['forwards'] = Input.encodeList<GetListenerDefaultActionForward3,
        Map<String, dynamic>>(forwards, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultAction3.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction3(
      fixedResponses: Input.decodeList<GetListenerDefaultActionFixedResponse3>(
          map['fixedResponses'],
          (value) => GetListenerDefaultActionFixedResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      forwards: Input.decodeList<GetListenerDefaultActionForward3>(
          map['forwards'],
          (value) => GetListenerDefaultActionForward3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
