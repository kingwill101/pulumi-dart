// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the properties for automatic resolution.
class AutomaticResolutionPropertiesResponse {
  /// Gets the MoveResource ARM ID of
  /// the dependent resource if the resolution type is Automatic.
  final pulumi.Input<String>? moveResourceId;

  /// Creates a new [AutomaticResolutionPropertiesResponse].
  /// [moveResourceId] Gets the MoveResource ARM ID of
  AutomaticResolutionPropertiesResponse({
    this.moveResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveResourceId': ?moveResourceId,
    };
  }

  factory AutomaticResolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticResolutionPropertiesResponse(
      moveResourceId: map['moveResourceId'] == null ? null : (map['moveResourceId'] as String).input(),
    );
  }
}

