// ignore_for_file: unused_element, unnecessary_cast

/// Represents an expression text. Example: title: "User account presence" description: "Determines whether the request has a user account" expression: "size(request.user) > 0"
class ExprStorageV1 {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String? expression;

  /// An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final String? location;

  /// An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  final String? title;

  ExprStorageV1({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory ExprStorageV1.fromMap(Map<String, dynamic> map) {
    return ExprStorageV1(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
