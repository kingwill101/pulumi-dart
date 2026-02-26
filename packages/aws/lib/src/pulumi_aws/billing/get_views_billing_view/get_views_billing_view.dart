// ignore_for_file: unused_element, unnecessary_cast

class GetViewsBillingView {
  /// ARN of the billing view.
  final String arn;
  final String billingViewType;

  /// Description of the billing view.
  final String description;

  /// Name of the billing view.
  final String name;

  /// Account ID of the billing view owner.
  final String ownerAccountId;

  GetViewsBillingView({
    required this.arn,
    required this.billingViewType,
    required this.description,
    required this.name,
    required this.ownerAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['billingViewType'] = billingViewType;
    map['description'] = description;
    map['name'] = name;
    map['ownerAccountId'] = ownerAccountId;
    return map;
  }

  factory GetViewsBillingView.fromMap(Map<String, dynamic> map) {
    return GetViewsBillingView(
      arn: map['arn'] as String,
      billingViewType: map['billingViewType'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      ownerAccountId: map['ownerAccountId'] as String,
    );
  }
}
