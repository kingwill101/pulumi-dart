// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_by_api_args_doc}
/// The set of arguments for TagByApi.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_by_api_args_doc}
class TagByApiArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? tagId;

  /// Creates a new [TagByApiArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagByApiArgs({
    required String apiId,
    required String resourceGroupName,
    required String serviceName,
    String? tagId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asOptionalInput<String>(tagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': ?tagId,
    };
  }

  factory TagByApiArgs.fromMap(Map<String, dynamic> map) {
    return TagByApiArgs(
      apiId: map['apiId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] == null ? null : map['tagId'] as String,
    );
  }
}

