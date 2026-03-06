// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_cloud_front_distribution_args_doc}
/// Arguments for getCloudFrontDistribution.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_cloud_front_distribution_args_doc}
class GetCloudFrontDistributionArgs {
  /// Name of CloudFrontDistribution
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudFrontDistributionArgs].
  /// [name] Name of CloudFrontDistribution
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCloudFrontDistributionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudFrontDistributionArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudFrontDistributionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

