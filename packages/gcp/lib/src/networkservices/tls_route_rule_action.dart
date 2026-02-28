// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_rule_action_destination.dart';

class TlsRouteRuleAction {
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final List<TlsRouteRuleActionDestination>? destinations;

  /// Creates a new [TlsRouteRuleAction].
  /// [destinations] The destination to which traffic should be forwarded.
  TlsRouteRuleAction({
    this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<TlsRouteRuleActionDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
    };
  }

  factory TlsRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return TlsRouteRuleAction(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<TlsRouteRuleActionDestination>(map['destinations'], (value) => TlsRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

