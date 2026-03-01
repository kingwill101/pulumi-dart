// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_app_dynamics_application_performance_monitoring_spring_cloud_app_dynamics_application_performance_monitoring_args_doc}
/// The set of arguments for SpringCloudAppDynamicsApplicationPerformanceMonitoring.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_dynamics_application_performance_monitoring_spring_cloud_app_dynamics_application_performance_monitoring_args_doc}
class SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs {
  /// Specifies the account access key used to authenticate with the Controller.
  final pulumi.Input<String> agentAccountAccessKey;
  /// Specifies the account name of the App Dynamics account.
  final pulumi.Input<String> agentAccountName;
  /// Specifies the name of the logical business application that this JVM node belongs to.
  final pulumi.Input<String>? agentApplicationName;
  /// Specifies the name of the node. Where JVMs are dynamically created.
  final pulumi.Input<String>? agentNodeName;
  /// Specifies the name of the tier that this JVM node belongs to.
  final pulumi.Input<String>? agentTierName;
  /// Specifies the unique host ID which is used to Logically partition a single physical host or virtual machine such that it appears to the Controller that the application is running on different machines.
  final pulumi.Input<String>? agentUniqueHostId;
  /// Specifies the hostname or the IP address of the AppDynamics Controller.
  final pulumi.Input<String> controllerHostName;
  /// Specifies the HTTP(S) port of the AppDynamics Controller. This is the port used to access the AppDynamics browser-based user interface.
  final pulumi.Input<int>? controllerPort;
  /// Specifies whether enable use SSL (HTTPS) to connect to the AppDynamics Controller.
  final pulumi.Input<bool>? controllerSslEnabled;
  /// Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  final pulumi.Input<bool>? globallyEnabled;
  /// The name which should be used for this Spring Cloud Application Performance Monitoring resource for App Dynamics. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs].
  /// [agentAccountAccessKey] Specifies the account access key used to authenticate with the Controller.
  /// [agentAccountName] Specifies the account name of the App Dynamics account.
  /// [agentApplicationName] Specifies the name of the logical business application that this JVM node belongs to.
  /// [agentNodeName] Specifies the name of the node. Where JVMs are dynamically created.
  /// [agentTierName] Specifies the name of the tier that this JVM node belongs to.
  /// [agentUniqueHostId] Specifies the unique host ID which is used to Logically partition a single physical host or virtual machine such that it appears to the Controller that the application is running on different machines.
  /// [controllerHostName] Specifies the hostname or the IP address of the AppDynamics Controller.
  /// [controllerPort] Specifies the HTTP(S) port of the AppDynamics Controller. This is the port used to access the AppDynamics browser-based user interface.
  /// [controllerSslEnabled] Specifies whether enable use SSL (HTTPS) to connect to the AppDynamics Controller.
  /// [globallyEnabled] Specifies whether the Spring Cloud Application Performance Monitoring resource for Application Insights is enabled globally. Defaults to `false`.
  /// [name] The name which should be used for this Spring Cloud Application Performance Monitoring resource for App Dynamics. Changing this forces a new resource to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new resource to be created.
  SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs({
    required String agentAccountAccessKey,
    required String agentAccountName,
    String? agentApplicationName,
    String? agentNodeName,
    String? agentTierName,
    String? agentUniqueHostId,
    required String controllerHostName,
    int? controllerPort,
    bool? controllerSslEnabled,
    bool? globallyEnabled,
    String? name,
    required String springCloudServiceId,
  }) :
      agentAccountAccessKey = pulumi.Input.asInput<String>(agentAccountAccessKey),
      agentAccountName = pulumi.Input.asInput<String>(agentAccountName),
      agentApplicationName = pulumi.Input.asOptionalInput<String>(agentApplicationName),
      agentNodeName = pulumi.Input.asOptionalInput<String>(agentNodeName),
      agentTierName = pulumi.Input.asOptionalInput<String>(agentTierName),
      agentUniqueHostId = pulumi.Input.asOptionalInput<String>(agentUniqueHostId),
      controllerHostName = pulumi.Input.asInput<String>(controllerHostName),
      controllerPort = pulumi.Input.asOptionalInput<int>(controllerPort),
      controllerSslEnabled = pulumi.Input.asOptionalInput<bool>(controllerSslEnabled),
      globallyEnabled = pulumi.Input.asOptionalInput<bool>(globallyEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAccountAccessKey': agentAccountAccessKey,
      'agentAccountName': agentAccountName,
      'agentApplicationName': ?agentApplicationName,
      'agentNodeName': ?agentNodeName,
      'agentTierName': ?agentTierName,
      'agentUniqueHostId': ?agentUniqueHostId,
      'controllerHostName': controllerHostName,
      'controllerPort': ?controllerPort,
      'controllerSslEnabled': ?controllerSslEnabled,
      'globallyEnabled': ?globallyEnabled,
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppDynamicsApplicationPerformanceMonitoringArgs(
      agentAccountAccessKey: map['agentAccountAccessKey'] as String,
      agentAccountName: map['agentAccountName'] as String,
      agentApplicationName: map['agentApplicationName'] == null ? null : map['agentApplicationName'] as String,
      agentNodeName: map['agentNodeName'] == null ? null : map['agentNodeName'] as String,
      agentTierName: map['agentTierName'] == null ? null : map['agentTierName'] as String,
      agentUniqueHostId: map['agentUniqueHostId'] == null ? null : map['agentUniqueHostId'] as String,
      controllerHostName: map['controllerHostName'] as String,
      controllerPort: map['controllerPort'] == null ? null : map['controllerPort'] as int,
      controllerSslEnabled: map['controllerSslEnabled'] == null ? null : map['controllerSslEnabled'] as bool,
      globallyEnabled: map['globallyEnabled'] == null ? null : map['globallyEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      springCloudServiceId: map['springCloudServiceId'] as String,
    );
  }
}

