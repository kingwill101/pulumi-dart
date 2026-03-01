// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_customer_subscription_args_doc}
/// The set of arguments for CustomerSubscription.
/// {@endtemplate}
/// {@macro pulumi_azurestack_customer_subscription_args_doc}
class CustomerSubscriptionArgs {
  /// Name of the product.
  final pulumi.Input<String>? customerSubscriptionName;
  /// Name of the Azure Stack registration.
  final pulumi.Input<String> registrationName;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;
  /// Tenant Id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [CustomerSubscriptionArgs].
  /// [customerSubscriptionName] Name of the product.
  /// [registrationName] Name of the Azure Stack registration.
  /// [resourceGroup] Name of the resource group.
  /// [tenantId] Tenant Id.
  CustomerSubscriptionArgs({
    String? customerSubscriptionName,
    required String registrationName,
    required String resourceGroup,
    String? tenantId,
  }) :
      customerSubscriptionName = pulumi.Input.asOptionalInput<String>(customerSubscriptionName),
      registrationName = pulumi.Input.asInput<String>(registrationName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      customerSubscriptionName: map['customerSubscriptionName'] == null ? null : map['customerSubscriptionName'] as String,
      registrationName: map['registrationName'] as String,
      resourceGroup: map['resourceGroup'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

