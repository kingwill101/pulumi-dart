// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableComment {
  /// A description of the table.
  final pulumi.Input<String>? message;

  /// Creates a new [TableComment].
  /// [message] A description of the table.
  TableComment({
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
    };
  }

  factory TableComment.fromMap(Map<String, dynamic> map) {
    return TableComment(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

