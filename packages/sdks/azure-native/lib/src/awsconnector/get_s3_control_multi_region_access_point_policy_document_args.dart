// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_s3_control_multi_region_access_point_policy_document_args_doc}
/// Arguments for getS3ControlMultiRegionAccessPointPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_s3_control_multi_region_access_point_policy_document_args_doc}
class GetS3ControlMultiRegionAccessPointPolicyDocumentArgs {
  /// Name of S3ControlMultiRegionAccessPointPolicyDocument
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetS3ControlMultiRegionAccessPointPolicyDocumentArgs].
  /// [name] Name of S3ControlMultiRegionAccessPointPolicyDocument
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetS3ControlMultiRegionAccessPointPolicyDocumentArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetS3ControlMultiRegionAccessPointPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetS3ControlMultiRegionAccessPointPolicyDocumentArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
