// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_web_pub_sub_shared_private_link_resource_args_doc}
/// The set of arguments for WebPubSubSharedPrivateLinkResource.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_web_pub_sub_shared_private_link_resource_args_doc}
class WebPubSubSharedPrivateLinkResourceArgs {
  /// The group id from the provider of resource the shared private link resource is for
  final pulumi.Input<String> groupId;
  /// The resource id of the resource the shared private link resource is for
  final pulumi.Input<String> privateLinkResourceId;
  /// The request message for requesting approval of the shared private link resource
  final pulumi.Input<String>? requestMessage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;
  /// The name of the shared private link resource.
  final pulumi.Input<String>? sharedPrivateLinkResourceName;

  /// Creates a new [WebPubSubSharedPrivateLinkResourceArgs].
  /// [groupId] The group id from the provider of resource the shared private link resource is for
  /// [privateLinkResourceId] The resource id of the resource the shared private link resource is for
  /// [requestMessage] The request message for requesting approval of the shared private link resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  /// [sharedPrivateLinkResourceName] The name of the shared private link resource.
  WebPubSubSharedPrivateLinkResourceArgs({
    required String groupId,
    required String privateLinkResourceId,
    String? requestMessage,
    required String resourceGroupName,
    required String resourceName,
    String? sharedPrivateLinkResourceName,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      privateLinkResourceId = pulumi.Input.asInput<String>(privateLinkResourceId),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      sharedPrivateLinkResourceName = pulumi.Input.asOptionalInput<String>(sharedPrivateLinkResourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'privateLinkResourceId': privateLinkResourceId,
      'requestMessage': ?requestMessage,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'sharedPrivateLinkResourceName': ?sharedPrivateLinkResourceName,
    };
  }

  factory WebPubSubSharedPrivateLinkResourceArgs.fromMap(Map<String, dynamic> map) {
    return WebPubSubSharedPrivateLinkResourceArgs(
      groupId: map['groupId'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      sharedPrivateLinkResourceName: map['sharedPrivateLinkResourceName'] == null ? null : map['sharedPrivateLinkResourceName'] as String,
    );
  }
}

