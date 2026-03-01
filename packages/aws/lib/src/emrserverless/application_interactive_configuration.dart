// ignore_for_file: unused_element, unnecessary_cast

class ApplicationInteractiveConfiguration {
  /// Enables an Apache Livy endpoint that you can connect to and run interactive jobs.
  final bool? livyEndpointEnabled;

  /// Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.
  final bool? studioEnabled;

  /// Creates a new [ApplicationInteractiveConfiguration].
  /// [livyEndpointEnabled] Enables an Apache Livy endpoint that you can connect to and run interactive jobs.
  /// [studioEnabled] Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.
  ApplicationInteractiveConfiguration({
    this.livyEndpointEnabled,
    this.studioEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livyEndpointEnabled': ?livyEndpointEnabled,
      'studioEnabled': ?studioEnabled,
    };
  }

  factory ApplicationInteractiveConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationInteractiveConfiguration(
      livyEndpointEnabled: map['livyEndpointEnabled'] == null
          ? null
          : map['livyEndpointEnabled'] as bool,
      studioEnabled: map['studioEnabled'] == null
          ? null
          : map['studioEnabled'] as bool,
    );
  }
}
