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
    String? description,
    String? region,
    required String restApiId,
    required String version,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        region = pulumi.Input.asOptionalInput<String>(region),
        restApiId = pulumi.Input.asInput<String>(restApiId),
        version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    map['version'] = version;
    return map;
  }

  factory DocumentationVersionArgs.fromMap(Map<String, dynamic> map) {
    return DocumentationVersionArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApiId: map['restApiId'] as String,
      version: map['version'] as String,
    );
  }
}
