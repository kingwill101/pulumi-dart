// ignore_for_file: unused_element, unnecessary_cast

/// HttpFilterConfiguration supplies additional contextual settings for networkservices.HttpFilter resources enabled by Traffic Director.
class HttpFilterConfig2 {
  /// The configuration needed to enable the networkservices.HttpFilter resource. The configuration must be YAML formatted and only contain fields defined in the protobuf identified in configTypeUrl
  final String? config;

  /// The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings, for example: type.googleapis.com/google.protobuf.Struct
  final String? configTypeUrl;

  /// Name of the networkservices.HttpFilter resource this configuration belongs to. This name must be known to the xDS client. Example: envoy.wasm
  final String? filterName;

  HttpFilterConfig2({
    this.config,
    this.configTypeUrl,
    this.filterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
    }
    final configTypeUrlValue = configTypeUrl;
    if (configTypeUrlValue != null) {
      map['configTypeUrl'] = configTypeUrlValue;
    }
    final filterNameValue = filterName;
    if (filterNameValue != null) {
      map['filterName'] = filterNameValue;
    }
    return map;
  }

  factory HttpFilterConfig2.fromMap(Map<String, dynamic> map) {
    return HttpFilterConfig2(
      config: map['config'] == null ? null : map['config'] as String,
      configTypeUrl:
          map['configTypeUrl'] == null ? null : map['configTypeUrl'] as String,
      filterName:
          map['filterName'] == null ? null : map['filterName'] as String,
    );
  }
}
