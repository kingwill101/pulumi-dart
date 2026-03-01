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

  /// Creates a new [GetViewsBillingView].
  /// [arn] ARN of the billing view.
  /// [billingViewType] Required.
  /// [description] Description of the billing view.
  /// [name] Name of the billing view.
  /// [ownerAccountId] Account ID of the billing view owner.
  GetViewsBillingView({
    required this.arn,
    required this.billingViewType,
    required this.description,
    required this.name,
    required this.ownerAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'billingViewType': billingViewType,
      'description': description,
      'name': name,
      'ownerAccountId': ownerAccountId,
    };
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
