// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DocumentationVersion.
class DocumentationVersionArgs {
  /// Description of the API documentation version.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the associated Rest API
  final pulumi.Input<String> restApiId;

  /// Version identifier of the API documentation snapshot.
  final pulumi.Input<String> version;

  DocumentationVersionArgs({
    this.description,
    this.region,
    required this.restApiId,
    required this.version,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restApiId: pulumi.Input.asInput<String>(map['restApiId']),
      version: pulumi.Input.asInput<String>(map['version']),
    );
  }
}
