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
  GetSuppressionListAddressArgs({
    required pulumi.Output<String> addressId,
    required pulumi.Output<String> domainName,
    required pulumi.Output<String> emailServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> suppressionListName,
  }) :
      addressId = pulumi.Input.asInput<String>(addressId),
      domainName = pulumi.Input.asInput<String>(domainName),
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      suppressionListName = pulumi.Input.asInput<String>(suppressionListName);

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
      addressId: pulumi.Output.create<String>(map['addressId'] as String),
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      emailServiceName: pulumi.Output.create<String>(map['emailServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      suppressionListName: pulumi.Output.create<String>(map['suppressionListName'] as String),
    );
  }
}

