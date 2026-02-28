// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codestarconnections_get_connection_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_codestarconnections_get_connection_get_connection_args_doc}
class GetConnectionArgs {
  /// CodeStar Connection ARN.
  final pulumi.Input<String>? arn;

  /// CodeStar Connection name.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of key-value resource tags to associate with the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConnectionArgs].
  /// [arn] CodeStar Connection ARN.
  /// [name] CodeStar Connection name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value resource tags to associate with the resource.
  GetConnectionArgs({
    String? arn,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
