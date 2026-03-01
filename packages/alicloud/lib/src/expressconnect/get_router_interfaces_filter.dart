// ignore_for_file: unused_element, unnecessary_cast


class GetRouterInterfacesFilter {
  final String? key;
  final List<String>? values;

  /// Creates a new [GetRouterInterfacesFilter].
  /// [key] Optional.
  /// [values] Optional.
  GetRouterInterfacesFilter({
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'values': ?values,
    };
  }

  factory GetRouterInterfacesFilter.fromMap(Map<String, dynamic> map) {
    return GetRouterInterfacesFilter(
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

