// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_destination_response.dart';

/// Definition of ReplicationConfiguration
class ReplicationConfigurationResponse {
  /// An array of destination objects. Only one destination object is supported.
  final pulumi.Input<List<ReplicationDestinationResponse>>? destinations;

  /// Creates a new [ReplicationConfigurationResponse].
  /// [destinations] An array of destination objects. Only one destination object is supported.
  const ReplicationConfigurationResponse({
    this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<ReplicationDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<ReplicationDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationConfigurationResponse(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationDestinationResponse>(guardedValue, (value) => ReplicationDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
