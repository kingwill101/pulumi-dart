// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for Implementation Guides - defining capabilities for national standards, vendor consortiums, clinical societies, etc.
class ImplementationGuidesConfiguration {
  /// If US Core Missing Data requirement is enabled.
  final pulumi.Input<bool>? usCoreMissingData;

  /// Creates a new [ImplementationGuidesConfiguration].
  /// [usCoreMissingData] If US Core Missing Data requirement is enabled.
  ImplementationGuidesConfiguration({
    this.usCoreMissingData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usCoreMissingData': ?usCoreMissingData,
    };
  }

  factory ImplementationGuidesConfiguration.fromMap(Map<String, dynamic> map) {
    return ImplementationGuidesConfiguration(
      usCoreMissingData: map['usCoreMissingData'] == null ? null : (map['usCoreMissingData']! as bool).input(),
    );
  }
}

