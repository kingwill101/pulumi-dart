// ignore_for_file: unused_element, unnecessary_cast

/// Represents an expression text. Example: title: "User account presence" description: "Determines whether the request has a user account" expression: "size(request.user) > 0"
class ExprResponse {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  final String description;

  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final String expression;

  /// An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  final String location;

  /// An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  final String title;

  /// Creates a new [ExprResponse].
  /// [description] An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  /// [location] An optional string indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  /// [title] An optional title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  ExprResponse({
    required this.description,
    required this.expression,
    required this.location,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expression': expression,
      'location': location,
      'title': title,
    };
  }

  factory ExprResponse.fromMap(Map<String, dynamic> map) {
    return ExprResponse(
      description: map['description'] as String,
      expression: map['expression'] as String,
      location: map['location'] as String,
      title: map['title'] as String,
    );
  }
}
