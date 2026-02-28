// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';

/// Define the Connectors target endpoint.
class DestinationConfig {
  /// The destinations for the key.
  final List<Destination>? destinations;

  /// The key is the destination identifier that is supported by the Connector.
  final String? key;

  /// Creates a new [DestinationConfig].
  /// [destinations] The destinations for the key.
  /// [key] The key is the destination identifier that is supported by the Connector.
  DestinationConfig({
    this.destinations,
    this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] =
          pulumi.Input.encodeList<Destination, Map<String, dynamic>>(
              destinationsValue, (value) => value.toMap());
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    return map;
  }

  factory DestinationConfig.fromMap(Map<String, dynamic> map) {
    return DestinationConfig(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<Destination>(
              map['destinations'],
              (value) =>
                  Destination.fromMap((value as Map).cast<String, dynamic>())),
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
