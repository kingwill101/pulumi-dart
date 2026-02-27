// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQuicksightGroup.
class GetQuicksightGroupArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// The name of the group that you want to match.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> groupName;

  /// QuickSight namespace. Defaults to `default`.
  final pulumi.Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetQuicksightGroupArgs({
    this.awsAccountId,
    required this.groupName,
    this.namespace,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['groupName'] = groupName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetQuicksightGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightGroupArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      namespace: pulumi.Input.asOptionalInput<String>(map['namespace']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
