// ignore_for_file: unused_element, unnecessary_cast


/// The option associated with messaging flows.
class MessagingOptions {
  /// Billing tier for this messaging flow
  final String? billingTier;

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
      billingTier: map['billingTier'] == null ? null : map['billingTier'] as String,
    );
  }
}

