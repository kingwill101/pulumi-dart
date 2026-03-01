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
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSsmInstanceInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetSsmInstanceInformationArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

