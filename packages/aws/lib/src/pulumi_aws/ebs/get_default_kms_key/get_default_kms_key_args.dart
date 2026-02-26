// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDefaultKmsKey.
class GetDefaultKmsKeyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetDefaultKmsKeyArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDefaultKmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultKmsKeyArgs(
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
