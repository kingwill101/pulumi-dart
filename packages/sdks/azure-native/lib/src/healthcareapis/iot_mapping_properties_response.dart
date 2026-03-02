// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping content.
class IotMappingPropertiesResponse {
  /// The mapping.
  final pulumi.Input<dynamic>? content;

  /// Creates a new [IotMappingPropertiesResponse].
  /// [content] The mapping.
  IotMappingPropertiesResponse({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory IotMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IotMappingPropertiesResponse(
      content: map['content'] == null ? null : (map['content']).input(),
    );
  }
}

