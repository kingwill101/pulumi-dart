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
  DocumentationVersionArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    required pulumi.Output<String> restApiId,
    required pulumi.Output<String> version,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApiId = pulumi.Input.asInput<String>(restApiId),
      version = pulumi.Input.asInput<String>(version);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApiId: pulumi.Output.create<String>(map['restApiId'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

