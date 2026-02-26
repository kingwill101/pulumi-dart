// ignore_for_file: unused_element, unnecessary_cast

class GetManagedPrefixListEntry {
  final String cidr;
  final String description;

  GetManagedPrefixListEntry({
    required this.cidr,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['description'] = description;
    return map;
  }

  factory GetManagedPrefixListEntry.fromMap(Map<String, dynamic> map) {
    return GetManagedPrefixListEntry(
      cidr: map['cidr'] as String,
      description: map['description'] as String,
    );
  }
}
