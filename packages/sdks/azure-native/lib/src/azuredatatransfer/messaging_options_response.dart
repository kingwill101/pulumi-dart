// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The option associated with messaging flows.
class MessagingOptionsResponse {
  /// Billing tier for this messaging flow
  final pulumi.Input<String>? billingTier;

  /// Creates a new [MessagingOptionsResponse].
  /// [billingTier] Billing tier for this messaging flow
  MessagingOptionsResponse({this.billingTier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'billingTier': ?billingTier};
  }

  factory MessagingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return MessagingOptionsResponse(
      billingTier: (() {
        final guardedValue = map['billingTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
