// ignore_for_file: unused_element, unnecessary_cast

import '../get_application_appversion_lifecycle/get_application_appversion_lifecycle.dart';

/// Result data returned by getApplication.
class GetApplicationResult2 {
  final GetApplicationAppversionLifecycle appversionLifecycle;

  /// ARN of the application.
  final String arn;

  /// Short description of the application
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;

  GetApplicationResult2({
    required this.appversionLifecycle,
    required this.arn,
    required this.description,
    required this.id,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appversionLifecycle'] = appversionLifecycle.toMap();
    map['arn'] = arn;
    map['description'] = description;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetApplicationResult2.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult2(
      appversionLifecycle: GetApplicationAppversionLifecycle.fromMap(
          (map['appversionLifecycle'] as Map).cast<String, dynamic>()),
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
