// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_registration_destination_config_destination.dart';

class ConnectionEventingConfigRegistrationDestinationConfig {
  /// destinations for the connection
  /// Structure is documented below.
  final List<ConnectionEventingConfigRegistrationDestinationConfigDestination>?
  destinations;

  /// Key for the connection
  final String? key;

  /// Creates a new [ConnectionEventingConfigRegistrationDestinationConfig].
  /// [destinations] destinations for the connection
  /// [key] Key for the connection
  ConnectionEventingConfigRegistrationDestinationConfig({
    this.destinations,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null
          ? null
          : pulumi.Input.encodeList<
              ConnectionEventingConfigRegistrationDestinationConfigDestination,
              Map<String, dynamic>
            >(destinations!, (value) => value.toMap()),
      'key': ?key,
    };
  }

  factory ConnectionEventingConfigRegistrationDestinationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionEventingConfigRegistrationDestinationConfig(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<
              ConnectionEventingConfigRegistrationDestinationConfigDestination
            >(
              map['destinations'],
              (value) =>
                  ConnectionEventingConfigRegistrationDestinationConfigDestination.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}
