// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_session_context_get_session_context_args_doc}
/// Arguments for getSessionContext.
/// {@endtemplate}
/// {@macro pulumi_iam_get_session_context_get_session_context_args_doc}
class GetSessionContextArgs {
  /// ARN for an assumed role.
  ///
  /// &gt; If `arn` is a non-role ARN, Pulumi gives no error and `issuer_arn` will be equal to the `arn` value. For STS assumed-role ARNs, Pulumi gives an error if the identified IAM role does not exist.
  final pulumi.Input<String> arn;

  /// Creates a new [GetSessionContextArgs].
  /// [arn] ARN for an assumed role.
  GetSessionContextArgs({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory GetSessionContextArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionContextArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
    );
  }
}

