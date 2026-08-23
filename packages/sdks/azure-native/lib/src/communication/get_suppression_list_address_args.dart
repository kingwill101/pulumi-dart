// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_suppression_list_address_args_doc}
/// Arguments for getSuppressionListAddress.
/// {@endtemplate}
/// {@macro pulumi_communication_get_suppression_list_address_args_doc}
class GetSuppressionListAddressArgs {
  /// The id of the address in a suppression list.
  final pulumi.Input<String> addressId;
  /// The name of the Domains resource.
  final pulumi.Input<String> domainName;
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the suppression list.
  final pulumi.Input<String> suppressionListName;

  /// Creates a new [GetSuppressionListAddressArgs].
  /// [addressId] The id of the address in a suppression list.
  /// [domainName] The name of the Domains resource.
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [suppressionListName] The name of the suppression list.
  const GetSuppressionListAddressArgs({
    required this.addressId,
    required this.domainName,
    required this.emailServiceName,
    required this.resourceGroupName,
    required this.suppressionListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressId': addressId,
      'domainName': domainName,
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
      'suppressionListName': suppressionListName,
    };
  }

  factory GetSuppressionListAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetSuppressionListAddressArgs(
      addressId: pulumi.Input.fromValue(map['addressId'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      emailServiceName: pulumi.Input.fromValue(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      suppressionListName: pulumi.Input.fromValue(map['suppressionListName'] as String),
    );
  }
}
