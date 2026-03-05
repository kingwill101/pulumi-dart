// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the blueprint. This field is readonly.
class BlueprintStatusResponse {
  /// Last modified time of this blueprint definition.
  final pulumi.Input<String> lastModified;
  /// Creation time of this blueprint definition.
  final pulumi.Input<String> timeCreated;

  /// Creates a new [BlueprintStatusResponse].
  /// [lastModified] Last modified time of this blueprint definition.
  /// [timeCreated] Creation time of this blueprint definition.
  BlueprintStatusResponse({
    required this.lastModified,
    required this.timeCreated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastModified': lastModified,
      'timeCreated': timeCreated,
    };
  }

  factory BlueprintStatusResponse.fromMap(Map<String, dynamic> map) {
    return BlueprintStatusResponse(
      lastModified: pulumi.Input.fromValue(map['lastModified'] as String),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
    );
  }
}

