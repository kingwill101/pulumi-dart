// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_macie_allow_list_args_doc}
/// Arguments for getMacieAllowList.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_macie_allow_list_args_doc}
class GetMacieAllowListArgs {
  /// Name of MacieAllowList
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMacieAllowListArgs].
  /// [name] Name of MacieAllowList
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMacieAllowListArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMacieAllowListArgs.fromMap(Map<String, dynamic> map) {
    return GetMacieAllowListArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

