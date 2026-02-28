// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying HTTP header in HTTP request and HTTP response.
class HttpRouteHeaderModifierResponse {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String> add;

  /// Remove headers (matching by header names) specified in the list.
  final List<String> remove;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String> set;

  /// Creates a new [HttpRouteHeaderModifierResponse].
  /// [add] Add the headers with given map where key is the name of the header, value is the value of the header.
  /// [remove] Remove headers (matching by header names) specified in the list.
  /// [set] Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  HttpRouteHeaderModifierResponse({
    required this.add,
    required this.remove,
    required this.set,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['add'] = add;
    map['remove'] = remove;
    map['set'] = set;
    return map;
  }

  factory HttpRouteHeaderModifierResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderModifierResponse(
      add: (map['add'] as Map).cast<String, String>(),
      remove: (map['remove'] as List).cast<String>(),
      set: (map['set'] as Map).cast<String, String>(),
    );
  }
}
