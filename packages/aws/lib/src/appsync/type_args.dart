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
    required String apiId,
    required String definition,
    required String format,
    String? region,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        definition = pulumi.Input.asInput<String>(definition),
        format = pulumi.Input.asInput<String>(format),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      apiId: map['apiId'] as String,
      definition: map['definition'] as String,
      format: map['format'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
