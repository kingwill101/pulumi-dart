// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_log_groups_get_log_groups_args_doc}
/// Arguments for getLogGroups.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_log_groups_get_log_groups_args_doc}
class GetLogGroupsArgs {
  /// Group prefix of the Cloudwatch log groups to list
  final pulumi.Input<String>? logGroupNamePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLogGroupsArgs].
  /// [logGroupNamePrefix] Group prefix of the Cloudwatch log groups to list
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLogGroupsArgs({
    this.logGroupNamePrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupNamePrefix': ?logGroupNamePrefix,
      'region': ?region,
    };
  }

  factory GetLogGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogGroupsArgs(
      logGroupNamePrefix: (() { final guardedValue = map['logGroupNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

