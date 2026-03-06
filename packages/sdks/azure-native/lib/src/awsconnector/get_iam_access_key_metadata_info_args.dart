// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_iam_access_key_metadata_info_args_doc}
/// Arguments for getIamAccessKeyMetadataInfo.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_iam_access_key_metadata_info_args_doc}
class GetIamAccessKeyMetadataInfoArgs {
  /// Name of IamAccessKeyMetadata
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIamAccessKeyMetadataInfoArgs].
  /// [name] Name of IamAccessKeyMetadata
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIamAccessKeyMetadataInfoArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIamAccessKeyMetadataInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetIamAccessKeyMetadataInfoArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

