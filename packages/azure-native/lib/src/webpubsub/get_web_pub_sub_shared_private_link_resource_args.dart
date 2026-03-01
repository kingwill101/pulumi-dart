// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_shared_private_link_resource_args_doc}
/// Arguments for getWebPubSubSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_shared_private_link_resource_args_doc}
class GetWebPubSubSharedPrivateLinkResourceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The name of the shared private link resource.
  final pulumi.Input<String> sharedPrivateLinkResourceName;

  /// Creates a new [GetWebPubSubSharedPrivateLinkResourceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource.
  GetWebPubSubSharedPrivateLinkResourceArgs({
    required String resourceGroupName,
    required String resourceName,
    required String sharedPrivateLinkResourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      sharedPrivateLinkResourceName = pulumi.Input.asInput<String>(sharedPrivateLinkResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sharedPrivateLinkResourceName': sharedPrivateLinkResourceName,
    };
  }

  factory GetWebPubSubSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubSharedPrivateLinkResourceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] as String,
    );
  }
}

