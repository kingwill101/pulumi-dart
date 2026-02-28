// ignore_for_file: unused_element, unnecessary_cast

class ManagedPrefixListEntry {
  /// CIDR block of this entry.
  final String cidr;

  /// Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.
  final String? description;

  /// Creates a new [ManagedPrefixListEntry].
  /// [cidr] CIDR block of this entry.
  /// [description] Description of this entry. Due to API limitations, updating only the description of an existing entry requires temporarily removing and re-adding the entry.
  ManagedPrefixListEntry({
    required this.cidr,
    this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    return map;
  }

  factory ManagedPrefixListEntry.fromMap(Map<String, dynamic> map) {
    return ManagedPrefixListEntry(
      cidr: map['cidr'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
    );
  }
}
