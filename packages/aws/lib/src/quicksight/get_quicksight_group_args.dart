// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_get_quicksight_group_get_quicksight_group_args_doc}
/// Arguments for getQuicksightGroup.
/// {@endtemplate}
/// {@macro pulumi_quicksight_get_quicksight_group_get_quicksight_group_args_doc}
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

  /// Creates a new [GetQuicksightGroupArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [groupName] The name of the group that you want to match.
  /// [namespace] QuickSight namespace. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetQuicksightGroupArgs({
    String? awsAccountId,
    required String groupName,
    String? namespace,
    String? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      groupName = pulumi.Input.asInput<String>(groupName),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'groupName': groupName,
      'namespace': ?namespace,
      'region': ?region,
    };
  }

  factory GetQuicksightGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightGroupArgs(
      awsAccountId: map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      groupName: map['groupName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

