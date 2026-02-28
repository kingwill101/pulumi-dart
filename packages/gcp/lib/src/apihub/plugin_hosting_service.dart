// ignore_for_file: unused_element, unnecessary_cast

class PluginHostingService {
  /// The URI of the service implemented by the plugin developer, used to
  /// invoke the plugin's functionality. This information is only required for
  /// user defined plugins.
  final String? serviceUri;

  /// Creates a new [PluginHostingService].
  /// [serviceUri] The URI of the service implemented by the plugin developer, used to
  PluginHostingService({
    this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceUriValue = serviceUri;
    if (serviceUriValue != null) {
      map['serviceUri'] = serviceUriValue;
    }
    return map;
  }

  factory PluginHostingService.fromMap(Map<String, dynamic> map) {
    return PluginHostingService(
      serviceUri:
          map['serviceUri'] == null ? null : map['serviceUri'] as String,
    );
  }
}
