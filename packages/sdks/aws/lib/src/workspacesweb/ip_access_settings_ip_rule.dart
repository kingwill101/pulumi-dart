// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpAccessSettingsIpRule {
  /// The description of the IP access settings.
  final pulumi.Input<String?>? description;
  /// The IP range of the IP rule.
  final pulumi.Input<String> ipRange;

  /// Creates a new [IpAccessSettingsIpRule].
  /// [description] The description of the IP access settings.
  /// [ipRange] The IP range of the IP rule.
  const IpAccessSettingsIpRule({
    this.description,
    required this.ipRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipRange': ipRange,
    };
  }

  factory IpAccessSettingsIpRule.fromMap(Map<String, dynamic> map) {
    return IpAccessSettingsIpRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRange: pulumi.Input.fromValue(map['ipRange'] as String),
    );
  }
}
