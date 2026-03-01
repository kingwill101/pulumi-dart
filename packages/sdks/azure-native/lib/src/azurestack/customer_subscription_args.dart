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
    pulumi.Output<String>? customerSubscriptionName,
    required pulumi.Output<String> registrationName,
    required pulumi.Output<String> resourceGroup,
    pulumi.Output<String>? tenantId,
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
      customerSubscriptionName: map['customerSubscriptionName'] == null ? null : pulumi.Output.create<String>(map['customerSubscriptionName'] as String),
      registrationName: pulumi.Output.create<String>(map['registrationName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

