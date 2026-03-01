// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_dynatrace_application_performance_monitoring_spring_cloud_dynatrace_application_performance_monitoring_args_doc}
/// The set of arguments for SpringCloudDynatraceApplicationPerformanceMonitoring.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_dynatrace_application_performance_monitoring_spring_cloud_dynatrace_application_performance_monitoring_args_doc}
class SpringCloudDynatraceApplicationPerformanceMonitoringArgs {
  /// Specifies the API token of the Dynatrace environment.
  final pulumi.Input<String>? apiToken;
  /// Specifies the API Url of the Dynatrace environment.
  final pulumi.Input<String>? apiUrl;
  /// Specifies the endpoint to connect to the Dynatrace environment.
  final pulumi.Input<String> connectionPoint;
  /// Specifies the Dynatrace environment ID.
  final pulumi.Input<String>? environmentId;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for Dynatrace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// Specifies the Dynatrace tenant.
  final pulumi.Input<String> tenant;
  /// Specifies the internal token that is used for authentication when OneAgent connects to the Dynatrace cluster to send data.
  final pulumi.Input<String> tenantToken;

  /// Creates a new [SpringCloudDynatraceApplicationPerformanceMonitoringArgs].
  /// [apiToken] Specifies the API token of the Dynatrace environment.
  /// [apiUrl] Specifies the API Url of the Dynatrace environment.
  /// [connectionPoint] Specifies the endpoint to connect to the Dynatrace environment.
  /// [environmentId] Specifies the Dynatrace environment ID.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for Dynatrace. Changing this forces a new resource to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  /// [tenant] Specifies the Dynatrace tenant.
  /// [tenantToken] Specifies the internal token that is used for authentication when OneAgent connects to the Dynatrace cluster to send data.
  SpringCloudDynatraceApplicationPerformanceMonitoringArgs({
    String? apiToken,
    String? apiUrl,
    required String connectionPoint,
    String? environmentId,
    bool? globallyEnabled,
    String? name,
    required String springCloudServiceId,
    required String tenant,
    required String tenantToken,
  }) :
      apiToken = pulumi.Input.asOptionalInput<String>(apiToken),
      apiUrl = pulumi.Input.asOptionalInput<String>(apiUrl),
      connectionPoint = pulumi.Input.asInput<String>(connectionPoint),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId),
      tenant = pulumi.Input.asInput<String>(tenant),
      tenantToken = pulumi.Input.asInput<String>(tenantToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiToken': ?apiToken,
      'apiUrl': ?apiUrl,
      'connectionPoint': connectionPoint,
      'environmentId': ?environmentId,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
      'tenant': tenant,
      'tenantToken': tenantToken,
    };
  }

  factory SpringCloudDynatraceApplicationPerformanceMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudDynatraceApplicationPerformanceMonitoringArgs(
      apiToken: map['apiToken'] == null ? null : map['apiToken'] as String,
      apiUrl: map['apiUrl'] == null ? null : map['apiUrl'] as String,
      connectionPoint: map['connectionPoint'] as String,
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      globallyEnabled: map['globallyEnabled'] == null ? null : map['globallyEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      springCloudServiceId: map['springCloudServiceId'] as String,
      tenant: map['tenant'] as String,
      tenantToken: map['tenantToken'] as String,
    );
  }
}

