// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ssm_instance_information_args_doc}
/// Arguments for getSsmInstanceInformation.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ssm_instance_information_args_doc}
class GetSsmInstanceInformationArgs {
  /// Name of SsmInstanceInformation
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSsmInstanceInformationArgs].
  /// [name] Name of SsmInstanceInformation
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSsmInstanceInformationArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSsmInstanceInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetSsmInstanceInformationArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

