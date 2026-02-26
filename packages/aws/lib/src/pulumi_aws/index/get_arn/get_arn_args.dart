// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getArn.
class GetArnArgs {
  /// ARN to parse.
  final Input<String> arn;
  final Input<String>? id;

  GetArnArgs({
    required this.arn,
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetArnArgs.fromMap(Map<String, dynamic> map) {
    return GetArnArgs(
      arn: Input.asInput<String>(map['arn']),
      id: Input.asOptionalInput<String>(map['id']),
    );
  }
}
