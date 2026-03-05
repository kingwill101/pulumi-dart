// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_lightsail_bucket_args_doc}
/// Arguments for getLightsailBucket.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_lightsail_bucket_args_doc}
class GetLightsailBucketArgs {
  /// Name of LightsailBucket
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLightsailBucketArgs].
  /// [name] Name of LightsailBucket
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLightsailBucketArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLightsailBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetLightsailBucketArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

