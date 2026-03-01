// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_cloud_link_args_doc}
/// The set of arguments for CloudLink.
/// {@endtemplate}
/// {@macro pulumi_avs_cloud_link_args_doc}
class CloudLinkArgs {
  /// Name of the cloud link.
  final pulumi.Input<String>? cloudLinkName;
  /// Identifier of the other private cloud participating in the link.
  final pulumi.Input<String>? linkedCloud;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CloudLinkArgs].
  /// [cloudLinkName] Name of the cloud link.
  /// [linkedCloud] Identifier of the other private cloud participating in the link.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  CloudLinkArgs({
    String? cloudLinkName,
    String? linkedCloud,
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      cloudLinkName = pulumi.Input.asOptionalInput<String>(cloudLinkName),
      linkedCloud = pulumi.Input.asOptionalInput<String>(linkedCloud),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudLinkName': ?cloudLinkName,
      'linkedCloud': ?linkedCloud,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CloudLinkArgs.fromMap(Map<String, dynamic> map) {
    return CloudLinkArgs(
      cloudLinkName: map['cloudLinkName'] == null ? null : map['cloudLinkName'] as String,
      linkedCloud: map['linkedCloud'] == null ? null : map['linkedCloud'] as String,
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

