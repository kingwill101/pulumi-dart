// ignore_for_file: unused_element, unnecessary_cast


class GetManagedPrefixListEntry {
  final String cidr;
  final String description;

  /// Creates a new [GetManagedPrefixListEntry].
  /// [cidr] Required.
  /// [description] Required.
  GetManagedPrefixListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
    };
  }

  factory GetManagedPrefixListEntry.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListEntry(
      cidr: map['cidr'] as String,
      description: map['description'] as String,
    );
  }
}

