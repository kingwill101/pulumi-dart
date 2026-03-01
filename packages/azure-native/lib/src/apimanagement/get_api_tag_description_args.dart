// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_tag_description_args_doc}
/// Arguments for getApiTagDescription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_tag_description_args_doc}
class GetApiTagDescriptionArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag description identifier. Used when creating tagDescription for API/Tag association. Based on API and Tag names.
  final pulumi.Input<String> tagDescriptionId;

  /// Creates a new [GetApiTagDescriptionArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagDescriptionId] Tag description identifier. Used when creating tagDescription for API/Tag association. Based on API and Tag names.
  GetApiTagDescriptionArgs({
    required String apiId,
    required String resourceGroupName,
    required String serviceName,
    required String tagDescriptionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagDescriptionId = pulumi.Input.asInput<String>(tagDescriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagDescriptionId': tagDescriptionId,
    };
  }

  factory GetApiTagDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetApiTagDescriptionArgs(
      apiId: map['apiId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagDescriptionId: map['tagDescriptionId'] as String,
    );
  }
}

