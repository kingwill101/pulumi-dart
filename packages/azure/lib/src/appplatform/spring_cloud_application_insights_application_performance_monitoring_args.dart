// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_application_insights_application_performance_monitoring_spring_cloud_application_insights_application_performance_monitoring_args_doc}
/// The set of arguments for SpringCloudApplicationInsightsApplicationPerformanceMonitoring.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_application_insights_application_performance_monitoring_spring_cloud_application_insights_application_performance_monitoring_args_doc}
class SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs {
  /// The instrumentation key used to push data to Application Insights.
  final pulumi.Input<String>? connectionString;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the cloud role instance.
  final pulumi.Input<String>? roleInstance;
  /// Specifies the cloud role name used to label the component on the application map.
  final pulumi.Input<String>? roleName;
  /// Specifies the percentage for fixed-percentage sampling.
  final pulumi.Input<int>? samplingPercentage;
  /// Specifies the number of requests per second for the rate-limited sampling.
  final pulumi.Input<int>? samplingRequestsPerSecond;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs].
  /// [connectionString] The instrumentation key used to push data to Application Insights.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Application Insights. Changing this forces a new resource to be created.
  /// [roleInstance] Specifies the cloud role instance.
  /// [roleName] Specifies the cloud role name used to label the component on the application map.
  /// [samplingPercentage] Specifies the percentage for fixed-percentage sampling.
  /// [samplingRequestsPerSecond] Specifies the number of requests per second for the rate-limited sampling.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs({
    String? connectionString,
    bool? globallyEnabled,
    String? name,
    String? roleInstance,
    String? roleName,
    int? samplingPercentage,
    int? samplingRequestsPerSecond,
    required String springCloudServiceId,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      roleInstance = pulumi.Input.asOptionalInput<String>(roleInstance),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      samplingPercentage = pulumi.Input.asOptionalInput<int>(samplingPercentage),
      samplingRequestsPerSecond = pulumi.Input.asOptionalInput<int>(samplingRequestsPerSecond),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'roleInstance': ?roleInstance,
      'roleName': ?roleName,
      'samplingPercentage': ?samplingPercentage,
      'samplingRequestsPerSecond': ?samplingRequestsPerSecond,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudApplicationInsightsApplicationPerformanceMonitoringArgs(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      globallyEnabled: map['globallyEnabled'] == null ? null : map['globallyEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      roleInstance: map['roleInstance'] == null ? null : map['roleInstance'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      samplingPercentage: map['samplingPercentage'] == null ? null : map['samplingPercentage'] as int,
      samplingRequestsPerSecond: map['samplingRequestsPerSecond'] == null ? null : map['samplingRequestsPerSecond'] as int,
      springCloudServiceId: map['springCloudServiceId'] as String,
    );
  }
}

