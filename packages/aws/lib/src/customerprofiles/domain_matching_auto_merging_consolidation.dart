// ignore_for_file: unused_element, unnecessary_cast


class DomainMatchingAutoMergingConsolidation {
  /// A list of matching criteria.
  final List<List<String>> matchingAttributesLists;

  /// Creates a new [DomainMatchingAutoMergingConsolidation].
  /// [matchingAttributesLists] A list of matching criteria.
  DomainMatchingAutoMergingConsolidation({
    required this.matchingAttributesLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchingAttributesLists': matchingAttributesLists,
    };
  }

  factory DomainMatchingAutoMergingConsolidation.fromMap(Map<String, dynamic> map) {
    return DomainMatchingAutoMergingConsolidation(
      matchingAttributesLists: (map['matchingAttributesLists'] as List).cast<List<String>>(),
    );
  }
}

