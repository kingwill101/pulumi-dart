// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApi.
class GetApiApigatewayV1betaResult {
  /// Created time.
  final String createTime;

  /// Optional. Display name.
  final String displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  final String managedService;

  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  final String name;

  /// State of the API.
  final String state;

  /// Updated time.
  final String updateTime;

  GetApiApigatewayV1betaResult({
    required this.createTime,
    required this.displayName,
    required this.labels,
    required this.managedService,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['managedService'] = managedService;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetApiApigatewayV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetApiApigatewayV1betaResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      managedService: map['managedService'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
