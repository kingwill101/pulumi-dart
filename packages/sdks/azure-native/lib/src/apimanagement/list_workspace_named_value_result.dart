// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listWorkspaceNamedValue.
class ListWorkspaceNamedValueResult {
  /// This is secret value of the NamedValue entity.
  final String? value;

  /// Creates a new [ListWorkspaceNamedValueResult].
  /// [value] This is secret value of the NamedValue entity.
  ListWorkspaceNamedValueResult({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ListWorkspaceNamedValueResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceNamedValueResult(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
