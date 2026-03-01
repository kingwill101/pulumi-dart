// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgeorder_get_address_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_get_address_args_doc}
class GetAddressArgs {
  /// The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only.
  final pulumi.Input<String> addressName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAddressArgs].
  /// [addressName] The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAddressArgs({
    required pulumi.Output<String> addressName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      addressName = pulumi.Input.asInput<String>(addressName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressName': addressName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressArgs(
      addressName: pulumi.Output.create<String>(map['addressName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

