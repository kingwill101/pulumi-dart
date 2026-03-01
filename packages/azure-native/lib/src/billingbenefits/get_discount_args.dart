// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_discount_args_doc}
/// Arguments for getDiscount.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_discount_args_doc}
class GetDiscountArgs {
  /// Name of the discount
  final pulumi.Input<String> discountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiscountArgs].
  /// [discountName] Name of the discount
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiscountArgs({
    required String discountName,
    required String resourceGroupName,
  }) :
      discountName = pulumi.Input.asInput<String>(discountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discountName': discountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiscountArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscountArgs(
      discountName: map['discountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

