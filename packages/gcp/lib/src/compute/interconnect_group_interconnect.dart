// ignore_for_file: unused_element, unnecessary_cast

class InterconnectGroupInterconnect {
  /// The URL of an Interconnect in this group. All Interconnects in the group are unique.
  final String? interconnect;

  /// The identifier for this object. Format specified above.
  final String name;

  /// Creates a new [InterconnectGroupInterconnect].
  /// [interconnect] The URL of an Interconnect in this group. All Interconnects in the group are unique.
  /// [name] The identifier for this object. Format specified above.
  InterconnectGroupInterconnect({this.interconnect, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'interconnect': ?interconnect, 'name': name};
  }

  factory InterconnectGroupInterconnect.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupInterconnect(
      interconnect: map['interconnect'] == null
          ? null
          : map['interconnect'] as String,
      name: map['name'] as String,
    );
  }
}
