// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ArtifactPackagingEnumValue
class ArtifactPackagingEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ArtifactPackagingEnumValueResponse].
  /// [value] Property value
  ArtifactPackagingEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ArtifactPackagingEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactPackagingEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

