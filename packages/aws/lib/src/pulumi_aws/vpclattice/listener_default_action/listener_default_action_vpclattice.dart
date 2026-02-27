// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action_fixed_response/listener_default_action_fixed_response_vpclattice.dart';
import '../listener_default_action_forward/listener_default_action_forward_vpclattice.dart';

class ListenerDefaultActionVpclattice {
  final ListenerDefaultActionFixedResponseVpclattice? fixedResponse;

  /// Route requests to one or more target groups. See Forward blocks below.
  ///
  /// > **NOTE:** You must specify exactly one of the following argument blocks: `fixed_response` or `forward`.
  final List<ListenerDefaultActionForwardVpclattice>? forwards;

  ListenerDefaultActionVpclattice({
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
      map['forwards'] = pulumi.Input.encodeList<
          ListenerDefaultActionForwardVpclattice,
          Map<String, dynamic>>(forwardsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListenerDefaultActionVpclattice.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionVpclattice(
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerDefaultActionFixedResponseVpclattice.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forwards: map['forwards'] == null
          ? null
          : pulumi.Input.decodeList<ListenerDefaultActionForwardVpclattice>(
              map['forwards'],
              (value) => ListenerDefaultActionForwardVpclattice.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
