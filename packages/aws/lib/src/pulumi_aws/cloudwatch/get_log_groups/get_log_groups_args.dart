// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLogGroups.
class GetLogGroupsArgs {
  /// Group prefix of the Cloudwatch log groups to list
  final Input<String>? logGroupNamePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetLogGroupsArgs({
    this.logGroupNamePrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logGroupNamePrefixValue = logGroupNamePrefix;
    if (logGroupNamePrefixValue != null) {
      map['logGroupNamePrefix'] = logGroupNamePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLogGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogGroupsArgs(
      logGroupNamePrefix:
          Input.asOptionalInput<String>(map['logGroupNamePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
