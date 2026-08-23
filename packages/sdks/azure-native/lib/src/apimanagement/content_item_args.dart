// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_content_item_args_doc}
/// The set of arguments for ContentItem.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_content_item_args_doc}
class ContentItemArgs {
  /// Content item identifier.
  final pulumi.Input<String>? contentItemId;
  /// Content type identifier.
  final pulumi.Input<String> contentTypeId;
  /// Properties of the content item.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ContentItemArgs].
  /// [contentItemId] Content item identifier.
  /// [contentTypeId] Content type identifier.
  /// [properties] Properties of the content item.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const ContentItemArgs({
    this.contentItemId,
    required this.contentTypeId,
    this.properties,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentItemId': ?contentItemId,
      'contentTypeId': contentTypeId,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ContentItemArgs.fromMap(Map<String, dynamic> map) {
    return ContentItemArgs(
      contentItemId: (() { final guardedValue = map['contentItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentTypeId: pulumi.Input.fromValue(map['contentTypeId'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
