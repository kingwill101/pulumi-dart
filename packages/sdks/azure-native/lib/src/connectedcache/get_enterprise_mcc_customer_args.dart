// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_enterprise_mcc_customer_args_doc}
/// Arguments for getEnterpriseMccCustomer.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_enterprise_mcc_customer_args_doc}
class GetEnterpriseMccCustomerArgs {
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnterpriseMccCustomerArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnterpriseMccCustomerArgs({
    required pulumi.Output<String> customerResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      customerResourceName = pulumi.Input.asInput<String>(customerResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerResourceName': customerResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnterpriseMccCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseMccCustomerArgs(
      customerResourceName: pulumi.Output.create<String>(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

