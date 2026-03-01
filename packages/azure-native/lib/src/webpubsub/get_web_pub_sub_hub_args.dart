// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_hub_args_doc}
/// Arguments for getWebPubSubHub.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_hub_args_doc}
class GetWebPubSubHubArgs {
  /// The hub name.
  final pulumi.Input<String> hubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubHubArgs].
  /// [hubName] The hub name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetWebPubSubHubArgs({
    required String hubName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubHubArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubHubArgs(
      hubName: map['hubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

