// ignore_for_file: unused_element, unnecessary_cast

class ProjectFailureReason {
  final String code;
  final String message;

  ProjectFailureReason({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    return map;
  }

  factory ProjectFailureReason.fromMap(Map<String, dynamic> map) {
    return ProjectFailureReason(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}
