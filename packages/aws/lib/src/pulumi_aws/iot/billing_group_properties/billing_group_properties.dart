// ignore_for_file: unused_element, unnecessary_cast

class BillingGroupProperties {
  /// A description of the Billing Group.
  final String? description;

  BillingGroupProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    return map;
  }

  factory BillingGroupProperties.fromMap(Map<String, dynamic> map) {
    return BillingGroupProperties(
      description:
          map['description'] == null ? null : map['description'] as String,
    );
  }
}
