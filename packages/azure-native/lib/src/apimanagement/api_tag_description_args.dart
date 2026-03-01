// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_tag_description_args_doc}
/// The set of arguments for ApiTagDescription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_tag_description_args_doc}
class ApiTagDescriptionArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Description of the Tag.
  final pulumi.Input<String>? description;
  /// Description of the external resources describing the tag.
  final pulumi.Input<String>? externalDocsDescription;
  /// Absolute URL of external resources describing the tag.
  final pulumi.Input<String>? externalDocsUrl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag description identifier. Used when creating tagDescription for API/Tag association. Based on API and Tag names.
  final pulumi.Input<String>? tagDescriptionId;

  /// Creates a new [ApiTagDescriptionArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [description] Description of the Tag.
  /// [externalDocsDescription] Description of the external resources describing the tag.
  /// [externalDocsUrl] Absolute URL of external resources describing the tag.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagDescriptionId] Tag description identifier. Used when creating tagDescription for API/Tag association. Based on API and Tag names.
  ApiTagDescriptionArgs({
    required String apiId,
    String? description,
    String? externalDocsDescription,
    String? externalDocsUrl,
    required String resourceGroupName,
    required String serviceName,
    String? tagDescriptionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalDocsDescription = pulumi.Input.asOptionalInput<String>(externalDocsDescription),
      externalDocsUrl = pulumi.Input.asOptionalInput<String>(externalDocsUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagDescriptionId = pulumi.Input.asOptionalInput<String>(tagDescriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'description': ?description,
      'externalDocsDescription': ?externalDocsDescription,
      'externalDocsUrl': ?externalDocsUrl,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagDescriptionId': ?tagDescriptionId,
    };
  }

  factory ApiTagDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return ApiTagDescriptionArgs(
      apiId: map['apiId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      externalDocsDescription: map['externalDocsDescription'] == null ? null : map['externalDocsDescription'] as String,
      externalDocsUrl: map['externalDocsUrl'] == null ? null : map['externalDocsUrl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagDescriptionId: map['tagDescriptionId'] == null ? null : map['tagDescriptionId'] as String,
    );
  }
}

