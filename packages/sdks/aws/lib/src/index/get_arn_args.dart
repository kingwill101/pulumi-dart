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
    required pulumi.Output<String> arn,
    pulumi.Output<String>? id,
  }) :
      arn = pulumi.Input.asInput<String>(arn),
      id = pulumi.Input.asOptionalInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': ?id,
    };
  }

  factory GetArnArgs.fromMap(Map<String, dynamic> map) {
    return GetArnArgs(
      arn: pulumi.Output.create<String>(map['arn'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
    );
  }
}

