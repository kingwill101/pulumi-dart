// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_billing_profile_args_doc}
/// Arguments for getBillingProfile.
/// {@endtemplate}
/// {@macro pulumi_billing_get_billing_profile_args_doc}
class GetBillingProfileArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;

  /// Creates a new [GetBillingProfileArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  const GetBillingProfileArgs({
    required this.billingAccountName,
    required this.billingProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
    };
  }

  factory GetBillingProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingProfileArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingProfileName: pulumi.Input.fromValue(map['billingProfileName'] as String),
    );
  }
}

