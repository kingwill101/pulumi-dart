// ignore_for_file: unused_element, unnecessary_cast

class IpAccessSettingsIpRule {
  /// The description of the IP access settings.
  final String? description;

  /// The IP range of the IP rule.
  final String ipRange;

  /// Creates a new [IpAccessSettingsIpRule].
  /// [description] The description of the IP access settings.
  /// [ipRange] The IP range of the IP rule.
  IpAccessSettingsIpRule({
    this.description,
    required this.ipRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ipRange'] = ipRange;
    return map;
  }

  factory IpAccessSettingsIpRule.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsIpRule(
      description:
          map['description'] == null ? null : map['description'] as String,
      ipRange: map['ipRange'] as String,
    );
  }
}
