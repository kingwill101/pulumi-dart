// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_api_link_args_doc}
/// The set of arguments for TagApiLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_api_link_args_doc}
class TagApiLinkArgs {
  /// Full resource Id of an API.
  final pulumi.Input<String> apiId;
  /// Tag-API link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? apiLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;

  /// Creates a new [TagApiLinkArgs].
  /// [apiId] Full resource Id of an API.
  /// [apiLinkId] Tag-API link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagApiLinkArgs({
    required String apiId,
    String? apiLinkId,
    required String resourceGroupName,
    required String serviceName,
    required String tagId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      apiLinkId = pulumi.Input.asOptionalInput<String>(apiLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'apiLinkId': ?apiLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
    };
  }

  factory TagApiLinkArgs.fromMap(Map<String, dynamic> map) {
    return TagApiLinkArgs(
      apiId: map['apiId'] as String,
      apiLinkId: map['apiLinkId'] == null ? null : map['apiLinkId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] as String,
    );
  }
}

