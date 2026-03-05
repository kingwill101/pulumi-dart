// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_monitor_sls_tasks_task_attach_label.dart';
import 'get_hybrid_monitor_sls_tasks_task_match_express.dart';
import 'get_hybrid_monitor_sls_tasks_task_sls_process_config.dart';

class GetHybridMonitorSlsTasksTask {
  /// The tags of the metric import task.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskAttachLabel>> attachLabels;
  /// The interval between the cloud monitoring plug-in collecting host monitoring data.
  final pulumi.Input<int> collectInterval;
  /// The address where the cloudmonitor Plug-In collects the monitoring data of the host.
  final pulumi.Input<String> collectTargetEndpoint;
  /// When the cloud monitor Agent collects, the relative path of the collection.
  final pulumi.Input<String> collectTargetPath;
  /// The type of the monitoring data. Valid values: Spring, Tomcat, Nginx, Tengine, JVM, Redis, MySQL, and AWS.
  final pulumi.Input<String> collectTargetType;
  /// The timeout period for the cloudmonitor plug-in to collect host monitoring data.
  final pulumi.Input<int> collectTimout;
  /// Create the timestamp of the monitoring task. Unit: milliseconds.
  final pulumi.Input<String> createTime;
  /// Monitoring task description.
  final pulumi.Input<String> description;
  /// Additional information for the instance.
  final pulumi.Input<String> extraInfo;
  /// The ID of the application Group.
  final pulumi.Input<String> groupId;
  /// The ID of the monitoring task.
  final pulumi.Input<String> hybridMonitorSlsTaskId;
  /// The ID of the Hybrid Monitor Sls Task.
  final pulumi.Input<String> id;
  /// A list of instances where monitoring data is collected in batches.
  final pulumi.Input<List<String>> instances;
  /// The path where on-premises log data is stored. On-premises log data is stored in the specified path of the host where CloudMonitor is deployed.
  final pulumi.Input<String> logFilePath;
  /// Local Log Monitoring and calculation method.
  final pulumi.Input<String> logProcess;
  /// The sample on-premises log.
  final pulumi.Input<String> logSample;
  /// The local log data is divided according to different matching patterns.
  final pulumi.Input<String> logSplit;
  /// The filter condition of the instance of the monitoring task.
  final pulumi.Input<String> matchExpressRelation;
  /// The matching condition of the instance in the application Group.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskMatchExpress>> matchExpresses;
  /// The namespace to which the host belongs.
  final pulumi.Input<String> namespace;
  /// The network type of the host.
  final pulumi.Input<String> networkType;
  /// The configurations of the logs that are imported from Log Service.
  final pulumi.Input<String> slsProcess;
  /// The configurations of the logs that are imported from Log Service.
  final pulumi.Input<List<GetHybridMonitorSlsTasksTaskSlsProcessConfig>> slsProcessConfigs;
  /// The name of the metric import task.
  final pulumi.Input<String> taskName;
  /// Monitoring Task type.
  final pulumi.Input<String> taskType;
  /// The region where the host resides.
  final pulumi.Input<String> uploadRegion;
  final pulumi.Input<String> yarmConfig;

  /// Creates a new [GetHybridMonitorSlsTasksTask].
  /// [attachLabels] The tags of the metric import task.
  /// [collectInterval] The interval between the cloud monitoring plug-in collecting host monitoring data.
  /// [collectTargetEndpoint] The address where the cloudmonitor Plug-In collects the monitoring data of the host.
  /// [collectTargetPath] When the cloud monitor Agent collects, the relative path of the collection.
  /// [collectTargetType] The type of the monitoring data. Valid values: Spring, Tomcat, Nginx, Tengine, JVM, Redis, MySQL, and AWS.
  /// [collectTimout] The timeout period for the cloudmonitor plug-in to collect host monitoring data.
  /// [createTime] Create the timestamp of the monitoring task. Unit: milliseconds.
  /// [description] Monitoring task description.
  /// [extraInfo] Additional information for the instance.
  /// [groupId] The ID of the application Group.
  /// [hybridMonitorSlsTaskId] The ID of the monitoring task.
  /// [id] The ID of the Hybrid Monitor Sls Task.
  /// [instances] A list of instances where monitoring data is collected in batches.
  /// [logFilePath] The path where on-premises log data is stored. On-premises log data is stored in the specified path of the host where CloudMonitor is deployed.
  /// [logProcess] Local Log Monitoring and calculation method.
  /// [logSample] The sample on-premises log.
  /// [logSplit] The local log data is divided according to different matching patterns.
  /// [matchExpressRelation] The filter condition of the instance of the monitoring task.
  /// [matchExpresses] The matching condition of the instance in the application Group.
  /// [namespace] The namespace to which the host belongs.
  /// [networkType] The network type of the host.
  /// [slsProcess] The configurations of the logs that are imported from Log Service.
  /// [slsProcessConfigs] The configurations of the logs that are imported from Log Service.
  /// [taskName] The name of the metric import task.
  /// [taskType] Monitoring Task type.
  /// [uploadRegion] The region where the host resides.
  /// [yarmConfig] Required.
  GetHybridMonitorSlsTasksTask({
    required this.attachLabels,
    required this.collectInterval,
    required this.collectTargetEndpoint,
    required this.collectTargetPath,
    required this.collectTargetType,
    required this.collectTimout,
    required this.createTime,
    required this.description,
    required this.extraInfo,
    required this.groupId,
    required this.hybridMonitorSlsTaskId,
    required this.id,
    required this.instances,
    required this.logFilePath,
    required this.logProcess,
    required this.logSample,
    required this.logSplit,
    required this.matchExpressRelation,
    required this.matchExpresses,
    required this.namespace,
    required this.networkType,
    required this.slsProcess,
    required this.slsProcessConfigs,
    required this.taskName,
    required this.taskType,
    required this.uploadRegion,
    required this.yarmConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachLabels': pulumi.Input.mapInputValue<List<GetHybridMonitorSlsTasksTaskAttachLabel>, List<Map<String, dynamic>>>(attachLabels, (value) => pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskAttachLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'collectInterval': collectInterval,
      'collectTargetEndpoint': collectTargetEndpoint,
      'collectTargetPath': collectTargetPath,
      'collectTargetType': collectTargetType,
      'collectTimout': collectTimout,
      'createTime': createTime,
      'description': description,
      'extraInfo': extraInfo,
      'groupId': groupId,
      'hybridMonitorSlsTaskId': hybridMonitorSlsTaskId,
      'id': id,
      'instances': instances,
      'logFilePath': logFilePath,
      'logProcess': logProcess,
      'logSample': logSample,
      'logSplit': logSplit,
      'matchExpressRelation': matchExpressRelation,
      'matchExpresses': pulumi.Input.mapInputValue<List<GetHybridMonitorSlsTasksTaskMatchExpress>, List<Map<String, dynamic>>>(matchExpresses, (value) => pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskMatchExpress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'namespace': namespace,
      'networkType': networkType,
      'slsProcess': slsProcess,
      'slsProcessConfigs': pulumi.Input.mapInputValue<List<GetHybridMonitorSlsTasksTaskSlsProcessConfig>, List<Map<String, dynamic>>>(slsProcessConfigs, (value) => pulumi.Input.encodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskName': taskName,
      'taskType': taskType,
      'uploadRegion': uploadRegion,
      'yarmConfig': yarmConfig,
    };
  }

  factory GetHybridMonitorSlsTasksTask.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTask(
      attachLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskAttachLabel>(map['attachLabels']!, (value) => GetHybridMonitorSlsTasksTaskAttachLabel.fromMap((value as Map).cast<String, dynamic>()))),
      collectInterval: pulumi.Input.fromValue(map['collectInterval'] as int),
      collectTargetEndpoint: pulumi.Input.fromValue(map['collectTargetEndpoint'] as String),
      collectTargetPath: pulumi.Input.fromValue(map['collectTargetPath'] as String),
      collectTargetType: pulumi.Input.fromValue(map['collectTargetType'] as String),
      collectTimout: pulumi.Input.fromValue(map['collectTimout'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      extraInfo: pulumi.Input.fromValue(map['extraInfo'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      hybridMonitorSlsTaskId: pulumi.Input.fromValue(map['hybridMonitorSlsTaskId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instances: pulumi.Input.fromValue((map['instances'] as List).cast<String>()),
      logFilePath: pulumi.Input.fromValue(map['logFilePath'] as String),
      logProcess: pulumi.Input.fromValue(map['logProcess'] as String),
      logSample: pulumi.Input.fromValue(map['logSample'] as String),
      logSplit: pulumi.Input.fromValue(map['logSplit'] as String),
      matchExpressRelation: pulumi.Input.fromValue(map['matchExpressRelation'] as String),
      matchExpresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskMatchExpress>(map['matchExpresses']!, (value) => GetHybridMonitorSlsTasksTaskMatchExpress.fromMap((value as Map).cast<String, dynamic>()))),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      slsProcess: pulumi.Input.fromValue(map['slsProcess'] as String),
      slsProcessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHybridMonitorSlsTasksTaskSlsProcessConfig>(map['slsProcessConfigs']!, (value) => GetHybridMonitorSlsTasksTaskSlsProcessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      uploadRegion: pulumi.Input.fromValue(map['uploadRegion'] as String),
      yarmConfig: pulumi.Input.fromValue(map['yarmConfig'] as String),
    );
  }
}

