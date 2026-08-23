// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionRegisteredFeaturesResponse {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? state;

  /// Creates a new [SubscriptionRegisteredFeaturesResponse].
  /// [name] Optional.
  /// [state] Optional.
  const SubscriptionRegisteredFeaturesResponse({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory SubscriptionRegisteredFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionRegisteredFeaturesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
