// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSessionContext.
class GetSessionContextArgs {
  /// ARN for an assumed role.
  ///
  /// > If `arn` is a non-role ARN, Pulumi gives no error and `issuer_arn` will be equal to the `arn` value. For STS assumed-role ARNs, Pulumi gives an error if the identified IAM role does not exist.
  final pulumi.Input<String> arn;

  GetSessionContextArgs({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory GetSessionContextArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionContextArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
    );
  }
}
