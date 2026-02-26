// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterError {
  /// Human-friendly description of the error.
  final String? message;

  AttachedClusterError({
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory AttachedClusterError.fromMap(Map<String, dynamic> map) {
    return AttachedClusterError(
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
