// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContactsRotation.
class GetContactsRotationArgs {
  /// The Amazon Resource Name (ARN) of the rotation.
  final Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetContactsRotationArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetContactsRotationArgs.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationArgs(
      arn: Input.asInput<String>(map['arn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
