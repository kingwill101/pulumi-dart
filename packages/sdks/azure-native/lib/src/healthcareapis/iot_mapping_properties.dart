// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping content.
class IotMappingProperties {
  /// The mapping.
  final pulumi.Input<dynamic>? content;

  /// Creates a new [IotMappingProperties].
  /// [content] The mapping.
  IotMappingProperties({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory IotMappingProperties.fromMap(Map<String, dynamic> map) {
    return IotMappingProperties(
      content: map['content'] == null ? null : (map['content']!).input(),
    );
  }
}

