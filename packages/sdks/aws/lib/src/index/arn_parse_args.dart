// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_arn_parse_arn_parse_args_doc}
/// Arguments for arnParse.
/// {@endtemplate}
/// {@macro pulumi_index_arn_parse_arn_parse_args_doc}
class ArnParseArgs {
  /// ARN (Amazon Resource Name) to parse
  final pulumi.Input<String> arn;

  /// Creates a new [ArnParseArgs].
  /// [arn] ARN (Amazon Resource Name) to parse
  const ArnParseArgs({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory ArnParseArgs.fromMap(Map<String, dynamic> map) {
    return ArnParseArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}
