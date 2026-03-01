// ignore_for_file: unused_element, unnecessary_cast


class GetSshKeysFilter {
  final bool? all;
  /// Filter the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  final String key;
  final String? matchBy;
  /// A list of values to match against the key field. Only retrieves SSH keys where the key field matches one or more of the values provided here.
  final List<String> values;

  /// Creates a new [GetSshKeysFilter].
  /// [all] Optional.
  /// [key] Filter the SSH Keys by this key. This may be one of `name`, `public_key`, or `fingerprint`.
  /// [matchBy] Optional.
  /// [values] A list of values to match against the key field. Only retrieves SSH keys where the key field matches one or more of the values provided here.
  GetSshKeysFilter({
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

  factory GetSshKeysFilter.fromMap(Map<String, dynamic> map) {
    return GetSshKeysFilter(
      all: map['all'] == null ? null : map['all'] as bool,
      key: map['key'] as String,
      matchBy: map['matchBy'] == null ? null : map['matchBy'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

