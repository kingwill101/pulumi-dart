// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ObjectLambdaAccessPointPolicy.
class ObjectLambdaAccessPointPolicyArgs {
  /// The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final Input<String>? accountId;

  /// The name of the Object Lambda Access Point.
  final Input<String>? name;

  /// The Object Lambda Access Point resource policy document.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ObjectLambdaAccessPointPolicyArgs({
    this.accountId,
    this.name,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ObjectLambdaAccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointPolicyArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      name: Input.asOptionalInput<String>(map['name']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
