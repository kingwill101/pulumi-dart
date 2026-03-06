// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_documentation_version_documentation_version_args_doc}
/// The set of arguments for DocumentationVersion.
/// {@endtemplate}
/// {@macro pulumi_apigateway_documentation_version_documentation_version_args_doc}
class DocumentationVersionArgs {
  /// Description of the API documentation version.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated Rest API
  final pulumi.Input<String> restApiId;
  /// Version identifier of the API documentation snapshot.
  final pulumi.Input<String> version;

  /// Creates a new [DocumentationVersionArgs].
  /// [description] Description of the API documentation version.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] ID of the associated Rest API
  /// [version] Version identifier of the API documentation snapshot.
  const DocumentationVersionArgs({
    this.description,
    this.region,
    required this.restApiId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'region': ?region,
      'restApiId': restApiId,
      'version': version,
    };
  }

  factory DocumentationVersionArgs.fromMap(Map<String, dynamic> map) {
    return DocumentationVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApiId: pulumi.Input.fromValue(map['restApiId'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

