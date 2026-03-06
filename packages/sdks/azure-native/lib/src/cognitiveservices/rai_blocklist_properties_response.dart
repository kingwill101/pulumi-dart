// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RAI Custom Blocklist properties.
class RaiBlocklistPropertiesResponse {
  /// Description of the block list.
  final pulumi.Input<String>? description;

  /// Creates a new [RaiBlocklistPropertiesResponse].
  /// [description] Description of the block list.
  const RaiBlocklistPropertiesResponse({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory RaiBlocklistPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

