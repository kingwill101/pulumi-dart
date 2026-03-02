// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ArchiveRuleFilter {
  /// Contains comparator.
  final pulumi.Input<List<String>>? contains;
  /// Filter criteria.
  final pulumi.Input<String> criteria;
  /// Equals comparator.
  final pulumi.Input<List<String>>? eqs;
  /// Boolean comparator.
  final pulumi.Input<String>? exists;
  /// Not Equals comparator.
  final pulumi.Input<List<String>>? neqs;

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
    return <String, dynamic>{
      'contains': ?contains,
      'criteria': criteria,
      'eqs': ?eqs,
      'exists': ?exists,
      'neqs': ?neqs,
    };
  }

  factory ArchiveRuleFilter.fromMap(Map<String, dynamic> map) {
    return ArchiveRuleFilter(
      contains: map['contains'] == null ? null : (((map['contains'] as List).cast<String>()).input()).input(),
      criteria: (map['criteria'] as String).input(),
      eqs: map['eqs'] == null ? null : (((map['eqs'] as List).cast<String>()).input()).input(),
      exists: map['exists'] == null ? null : ((map['exists'] as String).input()).input(),
      neqs: map['neqs'] == null ? null : (((map['neqs'] as List).cast<String>()).input()).input(),
    );
  }
}

