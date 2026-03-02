// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appsync_type_type_args_doc}
/// The set of arguments for Type.
/// {@endtemplate}
/// {@macro pulumi_appsync_type_type_args_doc}
class TypeArgs {
  /// GraphQL API ID.
  final pulumi.Input<String> apiId;
  /// The type definition.
  final pulumi.Input<String> definition;
  /// The type format: `SDL` or `JSON`.
  final pulumi.Input<String> format;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [TypeArgs].
  /// [apiId] GraphQL API ID.
  /// [definition] The type definition.
  /// [format] The type format: `SDL` or `JSON`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  TypeArgs({
    required this.apiId,
    required this.definition,
    required this.format,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'definition': definition,
      'format': format,
      'region': ?region,
    };
  }

  factory TypeArgs.fromMap(Map<String, dynamic> map) {
    return TypeArgs(
      apiId: (map['apiId'] as String).input(),
      definition: (map['definition'] as String).input(),
      format: (map['format'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

