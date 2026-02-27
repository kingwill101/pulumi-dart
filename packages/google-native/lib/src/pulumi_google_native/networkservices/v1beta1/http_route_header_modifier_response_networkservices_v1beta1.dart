// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying HTTP header in HTTP request and HTTP response.
class HttpRouteHeaderModifierResponseNetworkservicesV1beta1 {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String> add;

  /// Remove headers (matching by header names) specified in the list.
  final List<String> remove;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String> set;

  HttpRouteHeaderModifierResponseNetworkservicesV1beta1({
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

  factory HttpRouteHeaderModifierResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteHeaderModifierResponseNetworkservicesV1beta1(
      add: (map['add'] as Map).cast<String, String>(),
      remove: (map['remove'] as List).cast<String>(),
      set: (map['set'] as Map).cast<String, String>(),
    );
  }
}
