// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_default_kms_key_get_default_kms_key_args_doc}
/// Arguments for getDefaultKmsKey.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_default_kms_key_get_default_kms_key_args_doc}
class GetDefaultKmsKeyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDefaultKmsKeyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDefaultKmsKeyArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetDefaultKmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultKmsKeyArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

