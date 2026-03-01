// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_isp_customer_args_doc}
/// Arguments for getIspCustomer.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_isp_customer_args_doc}
class GetIspCustomerArgs {
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIspCustomerArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIspCustomerArgs({
    required String customerResourceName,
    required String resourceGroupName,
  }) :
      customerResourceName = pulumi.Input.asInput<String>(customerResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerResourceName': customerResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIspCustomerArgs.fromMap(Map<String, dynamic> map) {
    return GetIspCustomerArgs(
      customerResourceName: map['customerResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

