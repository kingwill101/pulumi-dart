// ignore_for_file: unused_element, unnecessary_cast

class IpAccessSettingsIpRule {
  /// The description of the IP access settings.
  final String? description;

  /// The IP range of the IP rule.
  final String ipRange;

  /// Creates a new [IpAccessSettingsIpRule].
  /// [description] The description of the IP access settings.
  /// [ipRange] The IP range of the IP rule.
  IpAccessSettingsIpRule({this.description, required this.ipRange});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'ipRange': ipRange};
  }

  factory IpAccessSettingsIpRule.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsIpRule(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ipRange: map['ipRange'] as String,
    );
  }
}
