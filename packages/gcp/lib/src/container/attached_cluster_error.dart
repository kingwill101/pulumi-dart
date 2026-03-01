// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterError {
  /// Human-friendly description of the error.
  final String? message;

  /// Creates a new [AttachedClusterError].
  /// [message] Human-friendly description of the error.
  AttachedClusterError({this.message});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': ?message};
  }

  factory AttachedClusterError.fromMap(Map<String, dynamic> map) {
    return AttachedClusterError(
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
