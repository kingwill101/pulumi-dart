// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectFailureReason {
  final pulumi.Input<String> code;
  final pulumi.Input<String> message;

  /// Creates a new [ProjectFailureReason].
  /// [code] Required.
  /// [message] Required.
  ProjectFailureReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory ProjectFailureReason.fromMap(Map<String, dynamic> map) {
    return ProjectFailureReason(
      code: (map['code'] as String).input(),
      message: (map['message'] as String).input(),
    );
  }
}

