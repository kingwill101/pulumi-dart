// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying HTTP header in HTTP request and HTTP response.
class HttpRouteHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? add;

  /// Remove headers (matching by header names) specified in the list.
  final List<String>? remove;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? set;

  HttpRouteHeaderModifier({
    this.add,
    this.remove,
    this.set,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addValue = add;
    if (addValue != null) {
      map['add'] = addValue;
    }
    final removeValue = remove;
    if (removeValue != null) {
      map['remove'] = removeValue;
    }
    final setValue = set;
    if (setValue != null) {
      map['set'] = setValue;
    }
    return map;
  }

  factory HttpRouteHeaderModifier.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderModifier(
      add: map['add'] == null
          ? null
          : (map['add'] as Map).cast<String, String>(),
      remove:
          map['remove'] == null ? null : (map['remove'] as List).cast<String>(),
      set: map['set'] == null
          ? null
          : (map['set'] as Map).cast<String, String>(),
    );
  }
}
