// ignore_for_file: unused_element, unnecessary_cast

class ArchiveRuleFilter {
  /// Contains comparator.
  final List<String>? contains;

  /// Filter criteria.
  final String criteria;

  /// Equals comparator.
  final List<String>? eqs;

  /// Boolean comparator.
  final String? exists;

  /// Not Equals comparator.
  final List<String>? neqs;

  /// Creates a new [ArchiveRuleFilter].
  /// [contains] Contains comparator.
  /// [criteria] Filter criteria.
  /// [eqs] Equals comparator.
  /// [exists] Boolean comparator.
  /// [neqs] Not Equals comparator.
  ArchiveRuleFilter({
    this.contains,
    required this.criteria,
    this.eqs,
    this.exists,
    this.neqs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containsValue = contains;
    if (containsValue != null) {
      map['contains'] = containsValue;
    }
    map['criteria'] = criteria;
    final eqsValue = eqs;
    if (eqsValue != null) {
      map['eqs'] = eqsValue;
    }
    final existsValue = exists;
    if (existsValue != null) {
      map['exists'] = existsValue;
    }
    final neqsValue = neqs;
    if (neqsValue != null) {
      map['neqs'] = neqsValue;
    }
    return map;
  }

  factory ArchiveRuleFilter.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleFilter(
      contains: map['contains'] == null
          ? null
          : (map['contains'] as List).cast<String>(),
      criteria: map['criteria'] as String,
      eqs: map['eqs'] == null ? null : (map['eqs'] as List).cast<String>(),
      exists: map['exists'] == null ? null : map['exists'] as String,
      neqs: map['neqs'] == null ? null : (map['neqs'] as List).cast<String>(),
    );
  }
}
