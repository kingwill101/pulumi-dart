// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The option associated with messaging flows.
class MessagingOptions {
  /// Billing tier for this messaging flow
  final pulumi.Input<String>? billingTier;

  /// Creates a new [MessagingOptions].
  /// [billingTier] Billing tier for this messaging flow
  MessagingOptions({
    this.billingTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingTier': ?billingTier,
    };
  }

  factory MessagingOptions.fromMap(Map<String, dynamic> map) {
    return MessagingOptions(
      billingTier: (() { final guardedValue = map['billingTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

