// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents subscription registered features.
class CustomerSubscriptionRegisteredFeatures {
  /// Name of subscription registered feature.
  final pulumi.Input<String>? name;
  /// State of subscription registered feature.
  final pulumi.Input<String>? state;

  /// Creates a new [CustomerSubscriptionRegisteredFeatures].
  /// [name] Name of subscription registered feature.
  /// [state] State of subscription registered feature.
  CustomerSubscriptionRegisteredFeatures({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory CustomerSubscriptionRegisteredFeatures.fromMap(Map<String, dynamic> map) {
    return CustomerSubscriptionRegisteredFeatures(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

