// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_access_key_last_used_args_doc}
/// Arguments for getIamAccessKeyLastUsed.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_access_key_last_used_args_doc}
class GetIamAccessKeyLastUsedArgs {
  /// Name of IamAccessKeyLastUsed
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamAccessKeyLastUsedArgs].
  /// [name] Name of IamAccessKeyLastUsed
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIamAccessKeyLastUsedArgs({
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

  factory GetIamAccessKeyLastUsedArgs.fromMap(Map<String, dynamic> map) {
    return GetIamAccessKeyLastUsedArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

