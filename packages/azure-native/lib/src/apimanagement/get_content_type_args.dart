// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_content_type_args_doc}
/// Arguments for getContentType.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_content_type_args_doc}
class GetContentTypeArgs {
  /// Content type identifier.
  final pulumi.Input<String> contentTypeId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetContentTypeArgs].
  /// [contentTypeId] Content type identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetContentTypeArgs({
    required String contentTypeId,
    required String resourceGroupName,
    required String serviceName,
  }) :
      contentTypeId = pulumi.Input.asInput<String>(contentTypeId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentTypeId': contentTypeId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetContentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetContentTypeArgs(
      contentTypeId: map['contentTypeId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

