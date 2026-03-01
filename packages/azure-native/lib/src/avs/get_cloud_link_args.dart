// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_cloud_link_args_doc}
/// Arguments for getCloudLink.
/// {@endtemplate}
/// {@macro pulumi_avs_get_cloud_link_args_doc}
class GetCloudLinkArgs {
  /// Name of the cloud link.
  final pulumi.Input<String> cloudLinkName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudLinkArgs].
  /// [cloudLinkName] Name of the cloud link.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudLinkArgs({
    required String cloudLinkName,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      cloudLinkName = pulumi.Input.asInput<String>(cloudLinkName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLinkName': cloudLinkName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudLinkArgs(
      cloudLinkName: map['cloudLinkName'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

