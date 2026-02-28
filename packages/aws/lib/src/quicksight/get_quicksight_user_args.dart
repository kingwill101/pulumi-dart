// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_get_quicksight_user_get_quicksight_user_args_doc}
/// Arguments for getQuicksightUser.
/// {@endtemplate}
/// {@macro pulumi_quicksight_get_quicksight_user_get_quicksight_user_args_doc}
class GetQuicksightUserArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// QuickSight namespace. Defaults to `default`.
  final pulumi.Input<String>? namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the user that you want to match.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userName;

  /// Creates a new [GetQuicksightUserArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [namespace] QuickSight namespace. Defaults to `default`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userName] The name of the user that you want to match.
  GetQuicksightUserArgs({
    String? awsAccountId,
    String? namespace,
    String? region,
    required String userName,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        namespace = pulumi.Input.asOptionalInput<String>(namespace),
        region = pulumi.Input.asOptionalInput<String>(region),
        userName = pulumi.Input.asInput<String>(userName);

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
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      userName: map['userName'] as String,
    );
  }
}
