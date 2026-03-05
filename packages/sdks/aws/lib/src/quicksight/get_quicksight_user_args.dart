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
    this.awsAccountId,
    this.namespace,
    this.region,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'namespace': ?namespace,
      'region': ?region,
      'userName': userName,
    };
  }

  factory GetQuicksightUserArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightUserArgs(
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

