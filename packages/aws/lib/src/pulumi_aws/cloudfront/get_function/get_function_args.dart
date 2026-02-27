// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFunction.
class GetFunctionArgs {
  /// Name of the CloudFront function.
  final pulumi.Input<String> name;

  /// Function’s stage, either `DEVELOPMENT` or `LIVE`.
  final pulumi.Input<String> stage;

  GetFunctionArgs({
    required this.name,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['stage'] = stage;
    return map;
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      stage: pulumi.Input.asInput<String>(map['stage']),
    );
  }
}
