// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the stream properties.
class NamespaceStreamResponse {
  /// Destinations for a stream.
  final pulumi.Input<List<dynamic>?>? destinations;
  /// Name of the stream definition.
  final pulumi.Input<String> name;
  /// Stringified JSON that contains connector-specific configuration for the specific stream.
  final pulumi.Input<String?>? streamConfiguration;
  /// URI or type definition ID.
  final pulumi.Input<String?>? typeRef;

  /// Creates a new [NamespaceStreamResponse].
  /// [destinations] Destinations for a stream.
  /// [name] Name of the stream definition.
  /// [streamConfiguration] Stringified JSON that contains connector-specific configuration for the specific stream.
  /// [typeRef] URI or type definition ID.
  const NamespaceStreamResponse({
    this.destinations,
    required this.name,
    this.streamConfiguration,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'name': name,
      'streamConfiguration': ?streamConfiguration,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceStreamResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceStreamResponse(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      streamConfiguration: (() { final guardedValue = map['streamConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
