// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_sequences_get_sequences_args_doc}
/// Arguments for getSequences.
/// {@endtemplate}
/// {@macro pulumi_index_get_sequences_get_sequences_args_doc}
class GetSequencesArgs {
  /// The PostgreSQL database which will be queried for sequence names.
  final pulumi.Input<String> database;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ALL`` operators.
  final pulumi.Input<List<String>>? likeAllPatterns;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ANY`` operators.
  final pulumi.Input<List<String>>? likeAnyPatterns;
  /// List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  final pulumi.Input<List<String>>? notLikeAllPatterns;
  /// Expression which will be pattern matched against sequence names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  ///
  /// Note that all optional arguments can be used in conjunction.
  final pulumi.Input<String>? regexPattern;
  /// List of PostgreSQL schema(s) which will be queried for sequence names. Queries all schemas in the database by default.
  final pulumi.Input<List<String>>? schemas;

  /// Creates a new [GetSequencesArgs].
  /// [database] The PostgreSQL database which will be queried for sequence names.
  /// [likeAllPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ALL`` operators.
  /// [likeAnyPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``LIKE ANY`` operators.
  /// [notLikeAllPatterns] List of expressions which will be pattern matched against sequence names in the query using the PostgreSQL ``NOT LIKE ALL`` operators.
  /// [regexPattern] Expression which will be pattern matched against sequence names in the query using the PostgreSQL ``~`` (regular expression match) operator.
  /// [schemas] List of PostgreSQL schema(s) which will be queried for sequence names. Queries all schemas in the database by default.
  GetSequencesArgs({
    required String database,
    List<String>? likeAllPatterns,
    List<String>? likeAnyPatterns,
    List<String>? notLikeAllPatterns,
    String? regexPattern,
    List<String>? schemas,
  }) :
      database = pulumi.Input.asInput<String>(database),
      likeAllPatterns = pulumi.Input.asOptionalInput<List<String>>(likeAllPatterns),
      likeAnyPatterns = pulumi.Input.asOptionalInput<List<String>>(likeAnyPatterns),
      notLikeAllPatterns = pulumi.Input.asOptionalInput<List<String>>(notLikeAllPatterns),
      regexPattern = pulumi.Input.asOptionalInput<String>(regexPattern),
      schemas = pulumi.Input.asOptionalInput<List<String>>(schemas);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'likeAllPatterns': ?likeAllPatterns,
      'likeAnyPatterns': ?likeAnyPatterns,
      'notLikeAllPatterns': ?notLikeAllPatterns,
      'regexPattern': ?regexPattern,
      'schemas': ?schemas,
    };
  }

  factory GetSequencesArgs.fromMap(Map<String, dynamic> map) {
    return GetSequencesArgs(
      database: map['database'] as String,
      likeAllPatterns: map['likeAllPatterns'] == null ? null : (map['likeAllPatterns'] as List).cast<String>(),
      likeAnyPatterns: map['likeAnyPatterns'] == null ? null : (map['likeAnyPatterns'] as List).cast<String>(),
      notLikeAllPatterns: map['notLikeAllPatterns'] == null ? null : (map['notLikeAllPatterns'] as List).cast<String>(),
      regexPattern: map['regexPattern'] == null ? null : map['regexPattern'] as String,
      schemas: map['schemas'] == null ? null : (map['schemas'] as List).cast<String>(),
    );
  }
}

