// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_arg.dart';

/// {@template pulumi_index_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_index_function_function_args_doc}
class FunctionArgs {
  /// List of arguments for the function.
  final pulumi.Input<List<FunctionArg>>? args;
  /// Function body.
  /// This should be the body content within the `AS $$` and the final `$$`. It will also accept the `AS $$` and `$$` if added.
  final pulumi.Input<String> body;
  /// The database where the function is located.
  /// If not specified, the function is created in the current database.
  final pulumi.Input<String>? database;
  /// True to automatically drop objects that depend on the function (such as
  /// operators or triggers), and in turn all objects that depend on those objects. Default is false.
  final pulumi.Input<bool>? dropCascade;
  /// The function programming language. Can be one of internal, sql, c, plpgsql. Default is plpgsql.
  final pulumi.Input<String>? language;
  /// The name of the function.
  final pulumi.Input<String>? name;
  /// Indicates if the function is parallel safe. Can be one of UNSAFE, RESTRICTED, or SAFE. Default is UNSAFE.
  final pulumi.Input<String>? parallel;
  /// Type that the function returns. It can be computed from the OUT arguments. Default is void.
  final pulumi.Input<String>? returns;
  /// The schema where the function is located.
  /// If not specified, the function is created in the current schema.
  final pulumi.Input<String>? schema;
  /// If the function should execute with the permissions of the owner, rather than the permissions of the caller. Default is false.
  final pulumi.Input<bool>? securityDefiner;
  /// If the function should always return NULL when any of the inputs is NULL. Default is false.
  final pulumi.Input<bool>? strict;
  /// Defines the volatility of the function. Can be one of VOLATILE, STABLE, or IMMUTABLE. Default is VOLATILE.
  final pulumi.Input<String>? volatility;

  /// Creates a new [FunctionArgs].
  /// [args] List of arguments for the function.
  /// [body] Function body.
  /// [database] The database where the function is located.
  /// [dropCascade] True to automatically drop objects that depend on the function (such as
  /// [language] The function programming language. Can be one of internal, sql, c, plpgsql. Default is plpgsql.
  /// [name] The name of the function.
  /// [parallel] Indicates if the function is parallel safe. Can be one of UNSAFE, RESTRICTED, or SAFE. Default is UNSAFE.
  /// [returns] Type that the function returns. It can be computed from the OUT arguments. Default is void.
  /// [schema] The schema where the function is located.
  /// [securityDefiner] If the function should execute with the permissions of the owner, rather than the permissions of the caller. Default is false.
  /// [strict] If the function should always return NULL when any of the inputs is NULL. Default is false.
  /// [volatility] Defines the volatility of the function. Can be one of VOLATILE, STABLE, or IMMUTABLE. Default is VOLATILE.
  FunctionArgs({
    List<FunctionArg>? args,
    required String body,
    String? database,
    bool? dropCascade,
    String? language,
    String? name,
    String? parallel,
    String? returns,
    String? schema,
    bool? securityDefiner,
    bool? strict,
    String? volatility,
  }) :
      args = pulumi.Input.asOptionalInput<List<FunctionArg>>(args),
      body = pulumi.Input.asInput<String>(body),
      database = pulumi.Input.asOptionalInput<String>(database),
      dropCascade = pulumi.Input.asOptionalInput<bool>(dropCascade),
      language = pulumi.Input.asOptionalInput<String>(language),
      name = pulumi.Input.asOptionalInput<String>(name),
      parallel = pulumi.Input.asOptionalInput<String>(parallel),
      returns = pulumi.Input.asOptionalInput<String>(returns),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      securityDefiner = pulumi.Input.asOptionalInput<bool>(securityDefiner),
      strict = pulumi.Input.asOptionalInput<bool>(strict),
      volatility = pulumi.Input.asOptionalInput<String>(volatility);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?pulumi.Input.mapOptionalInputValue<List<FunctionArg>, List<Map<String, dynamic>>>(args, (value) => pulumi.Input.encodeList<FunctionArg, Map<String, dynamic>>(value, (value) => value.toMap())),
      'body': body,
      'database': ?database,
      'dropCascade': ?dropCascade,
      'language': ?language,
      'name': ?name,
      'parallel': ?parallel,
      'returns': ?returns,
      'schema': ?schema,
      'securityDefiner': ?securityDefiner,
      'strict': ?strict,
      'volatility': ?volatility,
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      args: map['args'] == null ? null : pulumi.Input.decodeList<FunctionArg>(map['args'], (value) => FunctionArg.fromMap((value as Map).cast<String, dynamic>())),
      body: map['body'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      dropCascade: map['dropCascade'] == null ? null : map['dropCascade'] as bool,
      language: map['language'] == null ? null : map['language'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parallel: map['parallel'] == null ? null : map['parallel'] as String,
      returns: map['returns'] == null ? null : map['returns'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      securityDefiner: map['securityDefiner'] == null ? null : map['securityDefiner'] as bool,
      strict: map['strict'] == null ? null : map['strict'] as bool,
      volatility: map['volatility'] == null ? null : map['volatility'] as String,
    );
  }
}

