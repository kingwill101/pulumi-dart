// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action_fixed_response/listener_default_action_fixed_response3.dart';
import '../listener_default_action_forward/listener_default_action_forward3.dart';

class ListenerDefaultAction3 {
  final ListenerDefaultActionFixedResponse3? fixedResponse;

  /// Route requests to one or more target groups. See Forward blocks below.
  ///
  /// > **NOTE:** You must specify exactly one of the following argument blocks: <span pulumi-lang-nodejs="`fixedResponse`" pulumi-lang-dotnet="`FixedResponse`" pulumi-lang-go="`fixedResponse`" pulumi-lang-python="`fixed_response`" pulumi-lang-yaml="`fixedResponse`" pulumi-lang-java="`fixedResponse`">`fixed_response`</span> or <span pulumi-lang-nodejs="`forward`" pulumi-lang-dotnet="`Forward`" pulumi-lang-go="`forward`" pulumi-lang-python="`forward`" pulumi-lang-yaml="`forward`" pulumi-lang-java="`forward`">`forward`</span>.
  final List<ListenerDefaultActionForward3>? forwards;

  ListenerDefaultAction3({
    this.fixedResponse,
    this.forwards,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedResponseValue = fixedResponse;
    if (fixedResponseValue != null) {
      map['fixedResponse'] = fixedResponseValue.toMap();
    }
    final forwardsValue = forwards;
    if (forwardsValue != null) {
      map['forwards'] =
          Input.encodeList<ListenerDefaultActionForward3, Map<String, dynamic>>(
              forwardsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListenerDefaultAction3.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction3(
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerDefaultActionFixedResponse3.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forwards: map['forwards'] == null
          ? null
          : Input.decodeList<ListenerDefaultActionForward3>(
              map['forwards'],
              (value) => ListenerDefaultActionForward3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
