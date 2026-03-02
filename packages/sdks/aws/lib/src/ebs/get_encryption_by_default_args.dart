// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_encryption_by_default_get_encryption_by_default_args_doc}
/// Arguments for getEncryptionByDefault.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_encryption_by_default_get_encryption_by_default_args_doc}
class GetEncryptionByDefaultArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEncryptionByDefaultArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEncryptionByDefaultArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetEncryptionByDefaultArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionByDefaultArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

