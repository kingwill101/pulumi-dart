// ignore_for_file: unused_element, unnecessary_cast


class GetEcsPrefixListsListEntry {
  final String cidr;
  /// The description of the prefix list.
  final String description;

  /// Creates a new [GetEcsPrefixListsListEntry].
  /// [cidr] Required.
  /// [description] The description of the prefix list.
  GetEcsPrefixListsListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
    };
  }

  factory GetEcsPrefixListsListEntry.fromMap(Map<String, dynamic> map) {
    return GetEcsPrefixListsListEntry(
      cidr: map['cidr'] as String,
      description: map['description'] as String,
    );
  }
}

