// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_spec_response.dart';

/// Failover configuration on this endpoint. This property is READ-ONLY.
class DataCollectionEndpointResponseFailoverConfiguration {
  /// Active location where data flow will occur.
  final pulumi.Input<String>? activeLocation;

  /// Locations that are configured for failover.
  final pulumi.Input<List<LocationSpecResponse>>? locations;

  /// Creates a new [DataCollectionEndpointResponseFailoverConfiguration].
  /// [activeLocation] Active location where data flow will occur.
  /// [locations] Locations that are configured for failover.
  DataCollectionEndpointResponseFailoverConfiguration({
    this.activeLocation,
    this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': ?activeLocation,
      'locations':
          ?pulumi.Input.mapOptionalInputValue<
            List<LocationSpecResponse>,
            List<Map<String, dynamic>>
          >(
            locations,
            (value) =>
                pulumi.Input.encodeList<
                  LocationSpecResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DataCollectionEndpointResponseFailoverConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionEndpointResponseFailoverConfiguration(
      activeLocation: (() {
        final guardedValue = map['activeLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locations: (() {
        final guardedValue = map['locations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LocationSpecResponse>(
            guardedValue,
            (value) => LocationSpecResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
