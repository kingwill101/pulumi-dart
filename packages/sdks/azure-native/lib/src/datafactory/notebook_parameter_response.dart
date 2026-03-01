// ignore_for_file: unused_element, unnecessary_cast


/// Notebook parameter.
class NotebookParameterResponse {
  /// Notebook parameter type.
  final String? type;
  /// Notebook parameter value. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [NotebookParameterResponse].
  /// [type] Notebook parameter type.
  /// [value] Notebook parameter value. Type: string (or Expression with resultType string).
  NotebookParameterResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory NotebookParameterResponse.fromMap(Map<String, dynamic> map) {
    return NotebookParameterResponse(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

