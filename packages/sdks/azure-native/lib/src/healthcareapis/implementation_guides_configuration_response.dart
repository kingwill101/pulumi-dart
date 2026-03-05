// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for Implementation Guides - defining capabilities for national standards, vendor consortiums, clinical societies, etc.
class ImplementationGuidesConfigurationResponse {
  /// If US Core Missing Data requirement is enabled.
  final pulumi.Input<bool>? usCoreMissingData;

  /// Creates a new [ImplementationGuidesConfigurationResponse].
  /// [usCoreMissingData] If US Core Missing Data requirement is enabled.
  ImplementationGuidesConfigurationResponse({
    this.usCoreMissingData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usCoreMissingData': ?usCoreMissingData,
    };
  }

  factory ImplementationGuidesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ImplementationGuidesConfigurationResponse(
      usCoreMissingData: (() { final guardedValue = map['usCoreMissingData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

