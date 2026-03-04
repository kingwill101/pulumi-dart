// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_customer_subscription_args_doc}
/// Arguments for getCustomerSubscription.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_customer_subscription_args_doc}
class GetCustomerSubscriptionArgs {
  /// Name of the product.
  final pulumi.Input<String> customerSubscriptionName;

  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;

  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetCustomerSubscriptionArgs].
  /// [customerSubscriptionName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  GetCustomerSubscriptionArgs({
    required this.customerSubscriptionName,
    required this.registrationName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerSubscriptionName': customerSubscriptionName,
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetCustomerSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerSubscriptionArgs(
      customerSubscriptionName: pulumi.Input.fromValue(
        map['customerSubscriptionName'] as String,
      ),
      registrationName: pulumi.Input.fromValue(
        map['registrationName'] as String,
      ),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}
