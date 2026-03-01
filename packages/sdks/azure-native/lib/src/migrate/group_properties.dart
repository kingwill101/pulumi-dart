// ignore_for_file: unused_element, unnecessary_cast


/// Properties of group resource.
class GroupProperties {
  /// The type of group.
  final String? groupType;

  /// Creates a new [GroupProperties].
  /// [groupType] The type of group.
  GroupProperties({
    this.groupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupType': ?groupType,
    };
  }

  factory GroupProperties.fromMap(Map<String, dynamic> map) {
    return GroupProperties(
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
    );
  }
}

