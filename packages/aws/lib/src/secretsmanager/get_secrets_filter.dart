// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsFilter {
  /// Name of the filter field. Valid values can be found in the [Secrets Manager ListSecrets API Reference](https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_ListSecrets.html).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetSecretsFilter].
  /// [name] Name of the filter field. Valid values can be found in the [Secrets Manager ListSecrets API Reference](https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_ListSecrets.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetSecretsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetSecretsFilter.fromMap(Map<String, dynamic> map) {
    return GetSecretsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
