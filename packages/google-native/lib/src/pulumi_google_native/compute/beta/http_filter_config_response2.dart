// ignore_for_file: unused_element, unnecessary_cast

/// HttpFilterConfiguration supplies additional contextual settings for networkservices.HttpFilter resources enabled by Traffic Director.
class HttpFilterConfigResponse2 {
  /// The configuration needed to enable the networkservices.HttpFilter resource. The configuration must be YAML formatted and only contain fields defined in the protobuf identified in configTypeUrl
  final String config;

  /// The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings, for example: type.googleapis.com/google.protobuf.Struct
  final String configTypeUrl;

  /// Name of the networkservices.HttpFilter resource this configuration belongs to. This name must be known to the xDS client. Example: envoy.wasm
  final String filterName;

  HttpFilterConfigResponse2({
    required this.config,
    required this.configTypeUrl,
    required this.filterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config;
    map['configTypeUrl'] = configTypeUrl;
    map['filterName'] = filterName;
    return map;
  }

  factory HttpFilterConfigResponse2.fromMap(Map<String, dynamic> map) {
    return HttpFilterConfigResponse2(
      config: map['config'] as String,
      configTypeUrl: map['configTypeUrl'] as String,
      filterName: map['filterName'] as String,
    );
  }
}
