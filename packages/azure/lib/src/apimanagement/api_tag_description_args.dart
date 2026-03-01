// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_tag_description_api_tag_description_args_doc}
/// The set of arguments for ApiTagDescription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_tag_description_api_tag_description_args_doc}
class ApiTagDescriptionArgs {
  /// The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  final pulumi.Input<String> apiTagId;
  /// The description of the Tag.
  final pulumi.Input<String>? description;
  /// The description of the external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationDescription;
  /// The URL of external documentation resources describing the tag.
  final pulumi.Input<String>? externalDocumentationUrl;

  /// Creates a new [ApiTagDescriptionArgs].
  /// [apiTagId] The The ID of the API Management API Tag. Changing this forces a new API Management API Tag Description to be created.
  /// [description] The description of the Tag.
  /// [externalDocumentationDescription] The description of the external documentation resources describing the tag.
  /// [externalDocumentationUrl] The URL of external documentation resources describing the tag.
  ApiTagDescriptionArgs({
    required String apiTagId,
    String? description,
    String? externalDocumentationDescription,
    String? externalDocumentationUrl,
  }) :
      apiTagId = pulumi.Input.asInput<String>(apiTagId),
      description = pulumi.Input.asOptionalInput<String>(description),
      externalDocumentationDescription = pulumi.Input.asOptionalInput<String>(externalDocumentationDescription),
      externalDocumentationUrl = pulumi.Input.asOptionalInput<String>(externalDocumentationUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiTagId': apiTagId,
      'description': ?description,
      'externalDocumentationDescription': ?externalDocumentationDescription,
      'externalDocumentationUrl': ?externalDocumentationUrl,
    };
  }

  factory ApiTagDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return ApiTagDescriptionArgs(
      apiTagId: map['apiTagId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      externalDocumentationDescription: map['externalDocumentationDescription'] == null ? null : map['externalDocumentationDescription'] as String,
      externalDocumentationUrl: map['externalDocumentationUrl'] == null ? null : map['externalDocumentationUrl'] as String,
    );
  }
}

