// ignore_for_file: unused_element, unnecessary_cast

/// RelationshipOccurrence represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipOccurrence {
  /// A place for the SPDX file creator to record any general comments about the relationship
  final String? comment;

  /// Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  final String? source;

  /// Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  final String? target;

  /// Creates a new [RelationshipOccurrence].
  /// [comment] A place for the SPDX file creator to record any general comments about the relationship
  /// [source] Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  /// [target] Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  RelationshipOccurrence({
    this.comment,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    final targetValue = target;
    if (targetValue != null) {
      map['target'] = targetValue;
    }
    return map;
  }

  factory RelationshipOccurrence.fromMap(Map<String, dynamic> map) {
    return RelationshipOccurrence(
      comment: map['comment'] == null ? null : map['comment'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}
