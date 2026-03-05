// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_arn_get_arn_args_doc}
/// Arguments for getArn.
/// {@endtemplate}
/// {@macro pulumi_index_get_arn_get_arn_args_doc}
class GetArnArgs {
  /// ARN to parse.
  final pulumi.Input<String> arn;
  final pulumi.Input<String>? id;

  /// Creates a new [GetArnArgs].
  /// [arn] ARN to parse.
  /// [id] Optional.
  GetArnArgs({
    required this.arn,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': ?id,
    };
  }

  factory GetArnArgs.fromMap(Map<String, dynamic> map) {
    return GetArnArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

