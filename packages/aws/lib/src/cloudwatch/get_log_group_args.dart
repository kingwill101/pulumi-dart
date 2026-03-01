// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_log_group_get_log_group_args_doc}
/// Arguments for getLogGroup.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_log_group_get_log_group_args_doc}
class GetLogGroupArgs {
  /// Name of the Cloudwatch log group
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLogGroupArgs].
  /// [name] Name of the Cloudwatch log group
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource.
  GetLogGroupArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region, 'tags': ?tags};
  }

  factory GetLogGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetLogGroupArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
