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
    required pulumi.Output<String> customerSubscriptionName,
    required pulumi.Output<String> registrationName,
    required pulumi.Output<String> resourceGroup,
  }) :
      customerSubscriptionName = pulumi.Input.asInput<String>(customerSubscriptionName),
      registrationName = pulumi.Input.asInput<String>(registrationName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerSubscriptionName': customerSubscriptionName,
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetCustomerSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerSubscriptionArgs(
      customerSubscriptionName: pulumi.Output.create<String>(map['customerSubscriptionName'] as String),
      registrationName: pulumi.Output.create<String>(map['registrationName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

