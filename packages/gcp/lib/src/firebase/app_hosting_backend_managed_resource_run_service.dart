// ignore_for_file: unused_element, unnecessary_cast

class AppHostingBackendManagedResourceRunService {
  /// (Output)
  /// The name of the Cloud Run
  /// [`service`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service),
  /// in the format:
  /// projects/{project}/locations/{location}/services/{serviceId}
  final String? service;

  /// Creates a new [AppHostingBackendManagedResourceRunService].
  /// [service] (Output)
  AppHostingBackendManagedResourceRunService({
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory AppHostingBackendManagedResourceRunService.fromMap(
      Map<String, dynamic> map) {
    return AppHostingBackendManagedResourceRunService(
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
