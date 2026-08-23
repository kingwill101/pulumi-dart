// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Account-level tool label definition.
class RaiToolLabelPropertiesAccountScopeResponse {
  /// Dictionary of label key-value pairs for the account scope.
  final pulumi.Input<Map<String, String>>? labelValues;

  /// Creates a new [RaiToolLabelPropertiesAccountScopeResponse].
  /// [labelValues] Dictionary of label key-value pairs for the account scope.
  const RaiToolLabelPropertiesAccountScopeResponse({
    this.labelValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelValues': ?labelValues,
    };
  }

  factory RaiToolLabelPropertiesAccountScopeResponse.fromMap(Map<String, dynamic> map) {
    return RaiToolLabelPropertiesAccountScopeResponse(
      labelValues: (() { final guardedValue = map['labelValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
