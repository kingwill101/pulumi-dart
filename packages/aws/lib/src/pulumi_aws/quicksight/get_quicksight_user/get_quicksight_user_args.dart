// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuicksightUser.
class GetQuicksightUserArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// QuickSight namespace. Defaults to `default`.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the user that you want to match.
  ///
  /// The following arguments are optional:
  final Input<String> userName;

  GetQuicksightUserArgs({
    this.awsAccountId,
    this.namespace,
    this.region,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory GetQuicksightUserArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightUserArgs(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
