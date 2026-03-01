// ignore_for_file: unused_element, unnecessary_cast


class ActionResponse {
  /// The type of action.
  final String? type;

  /// Creates a new [ActionResponse].
  /// [type] The type of action.
  ActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

