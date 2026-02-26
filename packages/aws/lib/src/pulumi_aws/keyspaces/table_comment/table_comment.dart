// ignore_for_file: unused_element, unnecessary_cast

class TableComment {
  /// A description of the table.
  final String? message;

  TableComment({
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

  factory TableComment.fromMap(Map<String, dynamic> map) {
    return TableComment(
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
