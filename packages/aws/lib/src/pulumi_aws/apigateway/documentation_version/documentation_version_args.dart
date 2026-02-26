// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DocumentationVersion.
class DocumentationVersionArgs {
  /// Description of the API documentation version.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated Rest API
  final Input<String> restApiId;

  /// Version identifier of the API documentation snapshot.
  final Input<String> version;

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
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
      version: Input.asInput<String>(map['version']),
    );
  }
}
