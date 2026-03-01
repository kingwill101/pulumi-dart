// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_content_item_args_doc}
/// Arguments for getContentItem.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_content_item_args_doc}
class GetContentItemArgs {
  /// Content item identifier.
  final pulumi.Input<String> contentItemId;
  /// Content type identifier.
  final pulumi.Input<String> contentTypeId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetContentItemArgs].
  /// [contentItemId] Content item identifier.
  /// [contentTypeId] Content type identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetContentItemArgs({
    required pulumi.Output<String> contentItemId,
    required pulumi.Output<String> contentTypeId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      contentItemId = pulumi.Input.asInput<String>(contentItemId),
      contentTypeId = pulumi.Input.asInput<String>(contentTypeId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentItemId': contentItemId,
      'contentTypeId': contentTypeId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetContentItemArgs.fromMap(Map<String, dynamic> map) {
    return GetContentItemArgs(
      contentItemId: pulumi.Output.create<String>(map['contentItemId'] as String),
      contentTypeId: pulumi.Output.create<String>(map['contentTypeId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

