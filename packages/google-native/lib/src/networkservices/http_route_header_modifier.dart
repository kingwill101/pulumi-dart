// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying HTTP header in HTTP request and HTTP response.
class HttpRouteHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? add;

  /// Remove headers (matching by header names) specified in the list.
  final List<String>? remove;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? set;

  /// Creates a new [HttpRouteHeaderModifier].
  /// [add] Add the headers with given map where key is the name of the header, value is the value of the header.
  /// [remove] Remove headers (matching by header names) specified in the list.
  /// [set] Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  HttpRouteHeaderModifier({this.add, this.remove, this.set});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'add': ?add, 'remove': ?remove, 'set': ?set};
  }

  factory HttpRouteHeaderModifier.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderModifier(
      add: map['add'] == null
          ? null
          : (map['add'] as Map).cast<String, String>(),
      remove: map['remove'] == null
          ? null
          : (map['remove'] as List).cast<String>(),
      set: map['set'] == null
          ? null
          : (map['set'] as Map).cast<String, String>(),
    );
  }
}
