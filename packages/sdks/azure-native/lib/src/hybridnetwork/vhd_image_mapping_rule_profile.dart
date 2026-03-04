// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vhd mapping rule profile
class VhdImageMappingRuleProfile {
  /// List of values.
  final pulumi.Input<String>? userConfiguration;

  /// Creates a new [VhdImageMappingRuleProfile].
  /// [userConfiguration] List of values.
  VhdImageMappingRuleProfile({this.userConfiguration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userConfiguration': ?userConfiguration};
  }

  factory VhdImageMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return VhdImageMappingRuleProfile(
      userConfiguration: (() {
        final guardedValue = map['userConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
