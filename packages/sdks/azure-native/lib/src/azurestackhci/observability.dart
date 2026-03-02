// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Observability of AzureStackHCI Cluster.
class Observability {
  /// When set to true, collects log data to facilitate quicker issue resolution.
  final pulumi.Input<bool>? episodicDataUpload;
  /// Location of your cluster. The log and diagnostic data is sent to the appropriate diagnostics servers depending upon where your cluster resides. Setting this to false results in all data sent to Microsoft to be stored outside of the EU.
  final pulumi.Input<bool>? euLocation;
  /// Enables telemetry data to be sent to Microsoft
  final pulumi.Input<bool>? streamingDataClient;

  /// Creates a new [Observability].
  /// [episodicDataUpload] When set to true, collects log data to facilitate quicker issue resolution.
  /// [euLocation] Location of your cluster. The log and diagnostic data is sent to the appropriate diagnostics servers depending upon where your cluster resides. Setting this to false results in all data sent to Microsoft to be stored outside of the EU.
  /// [streamingDataClient] Enables telemetry data to be sent to Microsoft
  Observability({
    this.episodicDataUpload,
    this.euLocation,
    this.streamingDataClient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'episodicDataUpload': ?episodicDataUpload,
      'euLocation': ?euLocation,
      'streamingDataClient': ?streamingDataClient,
    };
  }

  factory Observability.fromMap(Map<String, dynamic> map) {
    return Observability(
      episodicDataUpload: map['episodicDataUpload'] == null ? null : (map['episodicDataUpload'] as bool).input(),
      euLocation: map['euLocation'] == null ? null : (map['euLocation'] as bool).input(),
      streamingDataClient: map['streamingDataClient'] == null ? null : (map['streamingDataClient'] as bool).input(),
    );
  }
}

