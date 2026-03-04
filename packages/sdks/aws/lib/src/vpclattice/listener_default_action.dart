// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_fixed_response.dart';
import 'listener_default_action_forward.dart';

class ListenerDefaultAction {
  final pulumi.Input<ListenerDefaultActionFixedResponse>? fixedResponse;

  /// Route requests to one or more target groups. See Forward blocks below.
  ///
  /// &gt; **NOTE:** You must specify exactly one of the following argument blocks: `fixed_response` or `forward`.
  final pulumi.Input<List<ListenerDefaultActionForward>>? forwards;

  /// Creates a new [ListenerDefaultAction].
  /// [fixedResponse] Optional.
  /// [forwards] Route requests to one or more target groups. See Forward blocks below.
  ListenerDefaultAction({this.fixedResponse, this.forwards});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedResponse':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerDefaultActionFixedResponse,
            Map<String, dynamic>
          >(fixedResponse, (value) => value.toMap()),
      'forwards':
          ?pulumi.Input.mapOptionalInputValue<
            List<ListenerDefaultActionForward>,
            List<Map<String, dynamic>>
          >(
            forwards,
            (value) =>
                pulumi.Input.encodeList<
                  ListenerDefaultActionForward,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction(
      fixedResponse: (() {
        final guardedValue = map['fixedResponse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerDefaultActionFixedResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forwards: (() {
        final guardedValue = map['forwards'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ListenerDefaultActionForward>(
            guardedValue,
            (value) => ListenerDefaultActionForward.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
