// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vhd mapping rule profile
class VhdImageMappingRuleProfileResponse {
  /// List of values.
  final pulumi.Input<String>? userConfiguration;

  /// Creates a new [VhdImageMappingRuleProfileResponse].
  /// [userConfiguration] List of values.
  const VhdImageMappingRuleProfileResponse({
    this.userConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userConfiguration': ?userConfiguration,
    };
  }

  factory VhdImageMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return VhdImageMappingRuleProfileResponse(
      userConfiguration: (() { final guardedValue = map['userConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

