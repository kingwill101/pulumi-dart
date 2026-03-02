// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ecr_image_detail_args_doc}
/// Arguments for getEcrImageDetail.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ecr_image_detail_args_doc}
class GetEcrImageDetailArgs {
  /// Name of EcrImageDetail
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEcrImageDetailArgs].
  /// [name] Name of EcrImageDetail
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEcrImageDetailArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEcrImageDetailArgs.fromMap(Map<String, dynamic> map) {
    return GetEcrImageDetailArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

