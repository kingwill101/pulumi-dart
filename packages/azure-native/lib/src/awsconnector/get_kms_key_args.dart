// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_kms_key_args_doc}
/// Arguments for getKmsKey.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_kms_key_args_doc}
class GetKmsKeyArgs {
  /// Name of KmsKey
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKmsKeyArgs].
  /// [name] Name of KmsKey
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetKmsKeyArgs({
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

  factory GetKmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKmsKeyArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

