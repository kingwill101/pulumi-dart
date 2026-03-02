// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetViewsBillingView {
  /// ARN of the billing view.
  final pulumi.Input<String> arn;
  final pulumi.Input<String> billingViewType;
  /// Description of the billing view.
  final pulumi.Input<String> description;
  /// Name of the billing view.
  final pulumi.Input<String> name;
  /// Account ID of the billing view owner.
  final pulumi.Input<String> ownerAccountId;

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
      arn: (map['arn'] as String).input(),
      billingViewType: (map['billingViewType'] as String).input(),
      description: (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      ownerAccountId: (map['ownerAccountId'] as String).input(),
    );
  }
}

