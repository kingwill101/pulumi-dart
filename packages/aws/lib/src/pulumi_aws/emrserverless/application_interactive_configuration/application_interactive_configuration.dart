// ignore_for_file: unused_element, unnecessary_cast

class ApplicationInteractiveConfiguration {
  /// Enables an Apache Livy endpoint that you can connect to and run interactive jobs.
  final bool? livyEndpointEnabled;

  /// Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.
  final bool? studioEnabled;

  ApplicationInteractiveConfiguration({
    this.livyEndpointEnabled,
    this.studioEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final livyEndpointEnabledValue = livyEndpointEnabled;
    if (livyEndpointEnabledValue != null) {
      map['livyEndpointEnabled'] = livyEndpointEnabledValue;
    }
    final studioEnabledValue = studioEnabled;
    if (studioEnabledValue != null) {
      map['studioEnabled'] = studioEnabledValue;
    }
    return map;
  }

  factory ApplicationInteractiveConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationInteractiveConfiguration(
      livyEndpointEnabled: map['livyEndpointEnabled'] == null
          ? null
          : map['livyEndpointEnabled'] as bool,
      studioEnabled:
          map['studioEnabled'] == null ? null : map['studioEnabled'] as bool,
    );
  }
}
