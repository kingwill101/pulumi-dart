// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the Resource ID for a Routing Rule.
class RoutingRuleLinkResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [RoutingRuleLinkResponse].
  /// [id] Resource ID.
  RoutingRuleLinkResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory RoutingRuleLinkResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleLinkResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
