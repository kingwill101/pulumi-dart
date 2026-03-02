// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes properties that can identify extensions.
class ConfigurationExtensionResponse {
  /// Publisher of the extension.
  final pulumi.Input<String> publisher;
  /// Type of the extension.
  final pulumi.Input<String> type;

  /// Creates a new [ConfigurationExtensionResponse].
  /// [publisher] Publisher of the extension.
  /// [type] Type of the extension.
  ConfigurationExtensionResponse({
    required this.publisher,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publisher': publisher,
      'type': type,
    };
  }

  factory ConfigurationExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationExtensionResponse(
      publisher: (map['publisher'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

