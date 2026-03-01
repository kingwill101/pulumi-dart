// ignore_for_file: unused_element, unnecessary_cast


class BillingGroupProperties {
  /// A description of the Billing Group.
  final String? description;

  /// Creates a new [BillingGroupProperties].
  /// [description] A description of the Billing Group.
  BillingGroupProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory BillingGroupProperties.fromMap(Map<String, dynamic> map) {
    return BillingGroupProperties(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

