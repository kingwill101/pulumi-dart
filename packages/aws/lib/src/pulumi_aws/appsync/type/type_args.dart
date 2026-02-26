// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Type.
class TypeArgs {
  /// GraphQL API ID.
  final Input<String> apiId;

  /// The type definition.
  final Input<String> definition;

  /// The type format: `SDL` or `JSON`.
  final Input<String> format;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  TypeArgs({
    required this.apiId,
    required this.definition,
    required this.format,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['definition'] = definition;
    map['format'] = format;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory TypeArgs.fromMap(Map<String, dynamic> map) {
    return TypeArgs(
      apiId: Input.asInput<String>(map['apiId']),
      definition: Input.asInput<String>(map['definition']),
      format: Input.asInput<String>(map['format']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
