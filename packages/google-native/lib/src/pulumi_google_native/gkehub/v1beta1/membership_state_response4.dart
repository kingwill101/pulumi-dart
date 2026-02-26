// ignore_for_file: unused_element, unnecessary_cast

/// State of the Membership resource.
class MembershipStateResponse4 {
  /// The current state of the Membership resource.
  final String code;

  /// This field is never set by the Hub Service.
  final String description;

  /// This field is never set by the Hub Service.
  final String updateTime;

  MembershipStateResponse4({
    required this.code,
    required this.description,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    map['updateTime'] = updateTime;
    return map;
  }

  factory MembershipStateResponse4.fromMap(Map<String, dynamic> map) {
    return MembershipStateResponse4(
      code: map['code'] as String,
      description: map['description'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
