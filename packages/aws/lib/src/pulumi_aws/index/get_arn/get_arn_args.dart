// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getArn.
class GetArnArgs {
  /// ARN to parse.
  final pulumi.Input<String> arn;
  final pulumi.Input<String>? id;

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
      arn: pulumi.Input.asInput<String>(map['arn']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
