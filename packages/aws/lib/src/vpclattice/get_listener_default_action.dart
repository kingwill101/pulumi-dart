// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_fixed_response.dart';
import 'get_listener_default_action_forward.dart';

class GetListenerDefaultAction {
  final List<GetListenerDefaultActionFixedResponse> fixedResponses;
  final List<GetListenerDefaultActionForward> forwards;

  /// Creates a new [GetListenerDefaultAction].
  /// [fixedResponses] Required.
  /// [forwards] Required.
  GetListenerDefaultAction({
    required this.fixedResponses,
    required this.forwards,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedResponses'] = pulumi.Input.encodeList<
        GetListenerDefaultActionFixedResponse,
        Map<String, dynamic>>(fixedResponses, (value) => value.toMap());
    map['forwards'] = pulumi.Input.encodeList<GetListenerDefaultActionForward,
        Map<String, dynamic>>(forwards, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction(
      fixedResponses:
          pulumi.Input.decodeList<GetListenerDefaultActionFixedResponse>(
              map['fixedResponses'],
              (value) => GetListenerDefaultActionFixedResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      forwards: pulumi.Input.decodeList<GetListenerDefaultActionForward>(
          map['forwards'],
          (value) => GetListenerDefaultActionForward.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
