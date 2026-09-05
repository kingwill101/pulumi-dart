// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_athena_get_named_query_get_named_query_args_doc}
/// Arguments for getNamedQuery.
/// {@endtemplate}
/// {@macro pulumi_athena_get_named_query_get_named_query_args_doc}
class GetNamedQueryArgs {
  /// The plain language name for the query. Maximum length of 128.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The workgroup to which the query belongs. Defaults to `primary`.
  final pulumi.Input<String?>? workgroup;

  /// Creates a new [GetNamedQueryArgs].
  /// [name] The plain language name for the query. Maximum length of 128.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] The workgroup to which the query belongs. Defaults to `primary`.
  const GetNamedQueryArgs({
    required this.name,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory GetNamedQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetNamedQueryArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroup: (() { final guardedValue = map['workgroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
