// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_destination_config_destination/connection_destination_config_destination.dart';

class ConnectionDestinationConfig {
  /// The destinations for the key.
  /// Structure is documented below.
  final List<ConnectionDestinationConfigDestination>? destinations;

  /// The key is the destination identifier that is supported by the Connector.
  final String key;

  ConnectionDestinationConfig({
    this.destinations,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          ConnectionDestinationConfigDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    map['key'] = key;
    return map;
  }

  factory ConnectionDestinationConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionDestinationConfig(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<ConnectionDestinationConfigDestination>(
              map['destinations'],
              (value) => ConnectionDestinationConfigDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      key: map['key'] as String,
    );
  }
}
