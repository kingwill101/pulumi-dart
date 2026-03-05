// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subscription for inbound rule
class NspAccessRulePropertiesSubscriptionsItemResponse {
  /// Fully qualified identifier of subscription
  final pulumi.Input<String>? id;

  /// Creates a new [NspAccessRulePropertiesSubscriptionsItemResponse].
  /// [id] Fully qualified identifier of subscription
  NspAccessRulePropertiesSubscriptionsItemResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory NspAccessRulePropertiesSubscriptionsItemResponse.fromMap(Map<String, dynamic> map) {
    return NspAccessRulePropertiesSubscriptionsItemResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

