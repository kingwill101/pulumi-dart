// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the properties for manual resolution.
class ManualResolutionPropertiesResponse {
  /// Gets or sets the target resource ARM ID of the dependent resource if the resource type is Manual.
  final pulumi.Input<String>? targetId;

  /// Creates a new [ManualResolutionPropertiesResponse].
  /// [targetId] Gets or sets the target resource ARM ID of the dependent resource if the resource type is Manual.
  ManualResolutionPropertiesResponse({this.targetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetId': ?targetId};
  }

  factory ManualResolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManualResolutionPropertiesResponse(
      targetId: (() {
        final guardedValue = map['targetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
