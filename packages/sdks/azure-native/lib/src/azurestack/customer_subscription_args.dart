// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_customer_subscription_args_doc}
/// The set of arguments for CustomerSubscription.
/// {@endtemplate}
/// {@macro pulumi_azurestack_customer_subscription_args_doc}
class CustomerSubscriptionArgs {
  /// Name of the product.
  final pulumi.Input<String?>? customerSubscriptionName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;
  /// Tenant Id.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [CustomerSubscriptionArgs].
  /// [customerSubscriptionName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  /// [tenantId] Tenant Id.
  const CustomerSubscriptionArgs({
    this.customerSubscriptionName,
    required this.registrationName,
    required this.resourceGroup,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerSubscriptionName': ?customerSubscriptionName,
      'registrationName': registrationName,
      'resourceGroup': resourceGroup,
      'tenantId': ?tenantId,
    };
  }

  factory CustomerSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return CustomerSubscriptionArgs(
      customerSubscriptionName: (() { final guardedValue = map['customerSubscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationName: pulumi.Input.fromValue(map['registrationName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
