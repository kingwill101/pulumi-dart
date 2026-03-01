// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsFilter {
  /// Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// them. This is useful when matching against multi-valued fields such as lists or sets where you want to ensure
  /// that all of the `values` are present in the list or set.
  final bool? all;
  /// Filter the domains by this key. This may be one of `name`, `urn`, and `ttl`.
  final String key;
  /// One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// match by using the `values` as regular expressions, or specify `substring` to match by treating the `values` as
  /// substrings to find within the string field.
  final String? matchBy;
  /// A list of values to match against the `key` field. Only retrieves domains
  /// where the `key` field takes on one or more of the values provided here.
  final List<String> values;

  /// Creates a new [GetDomainsFilter].
  /// [all] Set to `true` to require that a field match all of the `values` instead of just one or more of
  /// [key] Filter the domains by this key. This may be one of `name`, `urn`, and `ttl`.
  /// [matchBy] One of `exact` (default), `re`, or `substring`. For string-typed fields, specify `re` to
  /// [values] A list of values to match against the `key` field. Only retrieves domains
  GetDomainsFilter({
    this.all,
    required this.key,
    this.matchBy,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'key': key,
      'matchBy': ?matchBy,
      'values': values,
    };
  }

  factory GetDomainsFilter.fromMap(Map<String, dynamic> map) {
    return GetDomainsFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      key: map['key'] as String,
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

