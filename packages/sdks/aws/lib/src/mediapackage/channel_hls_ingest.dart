// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_hls_ingest_ingest_endpoint.dart';

class ChannelHlsIngest {
  /// A list of the ingest endpoints
  final pulumi.Input<List<ChannelHlsIngestIngestEndpoint>>? ingestEndpoints;

  /// Creates a new [ChannelHlsIngest].
  /// [ingestEndpoints] A list of the ingest endpoints
  ChannelHlsIngest({
    this.ingestEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ChannelHlsIngestIngestEndpoint>, List<Map<String, dynamic>>>(ingestEndpoints, (value) => pulumi.Input.encodeList<ChannelHlsIngestIngestEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ChannelHlsIngest.fromMap(Map<String, dynamic> map) {
    return ChannelHlsIngest(
      ingestEndpoints: map['ingestEndpoints'] == null ? null : (pulumi.Input.decodeList<ChannelHlsIngestIngestEndpoint>(map['ingestEndpoints'], (value) => ChannelHlsIngestIngestEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

