// ignore_for_file: unused_element, unnecessary_cast

/// A restriction for a specific service and optionally one or multiple specific methods. Both fields are case insensitive.
class V2ApiTarget {
  /// Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
  final List<String>? methods;

  /// The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/gcloud/reference/services/list) to get a list of services that are enabled in the project.
  final String? service;

  V2ApiTarget({
    this.methods,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory V2ApiTarget.fromMap(Map<String, dynamic> map) {
    return V2ApiTarget(
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
