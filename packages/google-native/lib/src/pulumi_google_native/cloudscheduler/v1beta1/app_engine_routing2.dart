// ignore_for_file: unused_element, unnecessary_cast

/// App Engine Routing. For more information about services, versions, and instances see [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine), [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
class AppEngineRouting2 {
  /// App instance. By default, the job is sent to an instance which is available when the job is attempted. Requests can only be sent to a specific instance if [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?#scaling_types_and_instance_classes). App Engine Flex does not support instances. For more information, see [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  final String? instance;

  /// App service. By default, the job is sent to the service which is the default service when the job is attempted.
  final String? service;

  /// App version. By default, the job is sent to the version which is the default version when the job is attempted.
  final String? version;

  AppEngineRouting2({
    this.instance,
    this.service,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory AppEngineRouting2.fromMap(Map<String, dynamic> map) {
    return AppEngineRouting2(
      instance: map['instance'] == null ? null : map['instance'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
