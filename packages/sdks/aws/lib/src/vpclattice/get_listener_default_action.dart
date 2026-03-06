// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_fixed_response.dart';
import 'get_listener_default_action_forward.dart';

class GetListenerDefaultAction {
  final pulumi.Input<List<GetListenerDefaultActionFixedResponse>> fixedResponses;
  final pulumi.Input<List<GetListenerDefaultActionForward>> forwards;

  /// Creates a new [GetListenerDefaultAction].
  /// [fixedResponses] Required.
  /// [forwards] Required.
  const GetListenerDefaultAction({
    required this.fixedResponses,
    required this.forwards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedResponses': pulumi.Input.mapInputValue<List<GetListenerDefaultActionFixedResponse>, List<Map<String, dynamic>>>(fixedResponses, (value) => pulumi.Input.encodeList<GetListenerDefaultActionFixedResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwards': pulumi.Input.mapInputValue<List<GetListenerDefaultActionForward>, List<Map<String, dynamic>>>(forwards, (value) => pulumi.Input.encodeList<GetListenerDefaultActionForward, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction(
      fixedResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionFixedResponse>(map['fixedResponses']!, (value) => GetListenerDefaultActionFixedResponse.fromMap((value as Map).cast<String, dynamic>()))),
      forwards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionForward>(map['forwards']!, (value) => GetListenerDefaultActionForward.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

