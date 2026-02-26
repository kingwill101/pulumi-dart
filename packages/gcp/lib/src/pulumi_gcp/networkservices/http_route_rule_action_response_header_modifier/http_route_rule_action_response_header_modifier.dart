// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionResponseHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? add;

  /// Remove headers (matching by header names) specified in the list.
  final List<String>? removes;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? set;

  HttpRouteRuleActionResponseHeaderModifier({
    this.add,
    this.removes,
    this.set,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addValue = add;
    if (addValue != null) {
      map['add'] = addValue;
    }
    final removesValue = removes;
    if (removesValue != null) {
      map['removes'] = removesValue;
    }
    final setValue = set;
    if (setValue != null) {
      map['set'] = setValue;
    }
    return map;
  }

  factory HttpRouteRuleActionResponseHeaderModifier.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRuleActionResponseHeaderModifier(
      add: map['add'] == null
          ? null
          : (map['add'] as Map).cast<String, String>(),
      removes: map['removes'] == null
          ? null
          : (map['removes'] as List).cast<String>(),
      set: map['set'] == null
          ? null
          : (map['set'] as Map).cast<String, String>(),
    );
  }
}
