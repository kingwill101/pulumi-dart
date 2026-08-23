// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMatchingAutoMergingConsolidation {
  /// A list of matching criteria.
  final pulumi.Input<List<List<String>>> matchingAttributesLists;

  /// Creates a new [DomainMatchingAutoMergingConsolidation].
  /// [matchingAttributesLists] A list of matching criteria.
  const DomainMatchingAutoMergingConsolidation({
    required this.matchingAttributesLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchingAttributesLists': matchingAttributesLists,
    };
  }

  factory DomainMatchingAutoMergingConsolidation.fromMap(Map<String, dynamic> map) {
    return DomainMatchingAutoMergingConsolidation(
      matchingAttributesLists: pulumi.Input.fromValue((map['matchingAttributesLists'] as List).cast<List<String>>()),
    );
  }
}
