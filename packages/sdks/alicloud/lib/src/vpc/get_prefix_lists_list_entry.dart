// ignore_for_file: unused_element, unnecessary_cast


class GetPrefixListsListEntry {
  /// The CIDR address block of the prefix list.
  final String cidr;
  /// The description of the cidr entry.
  final String description;

  /// Creates a new [GetPrefixListsListEntry].
  /// [cidr] The CIDR address block of the prefix list.
  /// [description] The description of the cidr entry.
  GetPrefixListsListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
    };
  }

  factory GetPrefixListsListEntry.fromMap(Map<String, dynamic> map) {
    return GetPrefixListsListEntry(
      cidr: map['cidr'] as String,
      description: map['description'] as String,
    );
  }
}

