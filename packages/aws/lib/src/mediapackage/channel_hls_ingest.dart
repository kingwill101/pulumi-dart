// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_hls_ingest_ingest_endpoint.dart';

class ChannelHlsIngest {
  /// A list of the ingest endpoints
  final List<ChannelHlsIngestIngestEndpoint>? ingestEndpoints;

  /// Creates a new [ChannelHlsIngest].
  /// [ingestEndpoints] A list of the ingest endpoints
  ChannelHlsIngest({
    this.ingestEndpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ingestEndpointsValue = ingestEndpoints;
    if (ingestEndpointsValue != null) {
      map['ingestEndpoints'] = pulumi.Input.encodeList<
          ChannelHlsIngestIngestEndpoint,
          Map<String, dynamic>>(ingestEndpointsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ChannelHlsIngest.fromMap(Map<String, dynamic> map) {
    return ChannelHlsIngest(
      ingestEndpoints: map['ingestEndpoints'] == null
          ? null
          : pulumi.Input.decodeList<ChannelHlsIngestIngestEndpoint>(
              map['ingestEndpoints'],
              (value) => ChannelHlsIngestIngestEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
