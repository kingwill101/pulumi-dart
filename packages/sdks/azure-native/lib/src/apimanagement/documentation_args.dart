// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_documentation_args_doc}
/// The set of arguments for Documentation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_documentation_args_doc}
class DocumentationArgs {
  /// Markdown documentation content.
  final pulumi.Input<String>? content;
  /// Documentation identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? documentationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// documentation title.
  final pulumi.Input<String>? title;

  /// Creates a new [DocumentationArgs].
  /// [content] Markdown documentation content.
  /// [documentationId] Documentation identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [title] documentation title.
  DocumentationArgs({
    pulumi.Output<String>? content,
    pulumi.Output<String>? documentationId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? title,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      documentationId = pulumi.Input.asOptionalInput<String>(documentationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'documentationId': ?documentationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'title': ?title,
    };
  }

  factory DocumentationArgs.fromMap(Map<String, dynamic> map) {
    return DocumentationArgs(
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      documentationId: map['documentationId'] == null ? null : pulumi.Output.create<String>(map['documentationId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

