// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationInteractiveConfiguration {
  /// Enables an Apache Livy endpoint that you can connect to and run interactive jobs.
  final pulumi.Input<bool>? livyEndpointEnabled;
  /// Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.
  final pulumi.Input<bool>? studioEnabled;

  /// Creates a new [ApplicationInteractiveConfiguration].
  /// [livyEndpointEnabled] Enables an Apache Livy endpoint that you can connect to and run interactive jobs.
  /// [studioEnabled] Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.
  const ApplicationInteractiveConfiguration({
    this.livyEndpointEnabled,
    this.studioEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'livyEndpointEnabled': ?livyEndpointEnabled,
      'studioEnabled': ?studioEnabled,
    };
  }

  factory ApplicationInteractiveConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationInteractiveConfiguration(
      livyEndpointEnabled: (() { final guardedValue = map['livyEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      studioEnabled: (() { final guardedValue = map['studioEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
