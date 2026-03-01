// ignore_for_file: unused_element, unnecessary_cast

/// RelationshipOccurrence represents an SPDX Relationship section: https://spdx.github.io/spdx-spec/7-relationships-between-SPDX-elements/
class RelationshipOccurrenceContaineranalysisV1beta1 {
  /// A place for the SPDX file creator to record any general comments about the relationship
  final String? comment;

  /// Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  final String? source;

  /// Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  final String? target;

  /// Creates a new [RelationshipOccurrenceContaineranalysisV1beta1].
  /// [comment] A place for the SPDX file creator to record any general comments about the relationship
  /// [source] Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
  /// [target] Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In cases where there are "known unknowns", the use of the keyword NOASSERTION can be used The keywords NONE can be used to indicate that an SPDX element (package/file/snippet) has no other elements connected by some relationship to it
  RelationshipOccurrenceContaineranalysisV1beta1({
    this.comment,
    this.source,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'source': ?source,
      'target': ?target,
    };
  }

  factory RelationshipOccurrenceContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RelationshipOccurrenceContaineranalysisV1beta1(
      comment: map['comment'] == null ? null : map['comment'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}
