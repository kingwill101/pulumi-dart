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
    this.content,
    this.documentationId,
    required this.resourceGroupName,
    required this.serviceName,
    this.title,
  });

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
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationId: (() {
        final guardedValue = map['documentationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
