// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_s_get_sargs_doc}
/// Arguments for getS.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_s_get_sargs_doc}
class GetSArgs {
  /// A prefix for filtering. It's applied with the `account_id`.
  final pulumi.Input<String>? prefix;

  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A regular expression for filtering. It's applied with the `email`. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  final pulumi.Input<String>? regex;

  /// Creates a new [GetSArgs].
  /// [prefix] A prefix for filtering. It's applied with the `account_id`.
  /// [project] The ID of the project. If it is not provided, the provider project is used.
  /// [regex] A regular expression for filtering. It's applied with the `email`. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  GetSArgs({String? prefix, String? project, String? regex})
    : prefix = pulumi.Input.asOptionalInput<String>(prefix),
      project = pulumi.Input.asOptionalInput<String>(project),
      regex = pulumi.Input.asOptionalInput<String>(regex);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'project': ?project,
      'regex': ?regex,
    };
  }

  factory GetSArgs.fromMap(Map<String, dynamic> map) {
    return GetSArgs(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
