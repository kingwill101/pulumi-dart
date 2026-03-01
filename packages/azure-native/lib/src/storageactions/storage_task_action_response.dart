// ignore_for_file: unused_element, unnecessary_cast

import 'else_condition_response.dart';
import 'if_condition_response.dart';

/// The storage task action represents conditional statements and operations to be performed on target objects.
class StorageTaskActionResponse {
  /// The else block of storage task operation
  final ElseConditionResponse? else_;
  /// The if block of storage task operation
  final IfConditionResponse if_;

  /// Creates a new [StorageTaskActionResponse].
  /// [else_] The else block of storage task operation
  /// [if_] The if block of storage task operation
  StorageTaskActionResponse({
    this.else_,
    required this.if_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'else': ?else_ == null ? null : else_!.toMap(),
      'if': if_.toMap(),
    };
  }

  factory StorageTaskActionResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskActionResponse(
      else_: map['else'] == null ? null : ElseConditionResponse.fromMap((map['else'] as Map).cast<String, dynamic>()),
      if_: IfConditionResponse.fromMap((map['if'] as Map).cast<String, dynamic>()),
    );
  }
}

