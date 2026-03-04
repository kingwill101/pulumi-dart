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
    required this.apiId,
    this.description,
    this.externalDocsDescription,
    this.externalDocsUrl,
    required this.resourceGroupName,
    required this.serviceName,
    this.tagDescriptionId,
  });

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
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalDocsDescription: (() {
        final guardedValue = map['externalDocsDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalDocsUrl: (() {
        final guardedValue = map['externalDocsUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagDescriptionId: (() {
        final guardedValue = map['tagDescriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
