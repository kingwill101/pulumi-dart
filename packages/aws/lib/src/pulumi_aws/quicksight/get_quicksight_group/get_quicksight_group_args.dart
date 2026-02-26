// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuicksightGroup.
class GetQuicksightGroupArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// The name of the group that you want to match.
  ///
  /// The following arguments are optional:
  final Input<String> groupName;

  /// QuickSight namespace. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      groupName: Input.asInput<String>(map['groupName']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
