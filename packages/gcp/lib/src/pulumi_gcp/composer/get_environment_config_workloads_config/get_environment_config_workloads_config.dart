// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_environment_config_workloads_config_dag_processor/get_environment_config_workloads_config_dag_processor.dart';
import '../get_environment_config_workloads_config_scheduler/get_environment_config_workloads_config_scheduler.dart';
import '../get_environment_config_workloads_config_triggerer/get_environment_config_workloads_config_triggerer.dart';
import '../get_environment_config_workloads_config_web_server/get_environment_config_workloads_config_web_server.dart';
import '../get_environment_config_workloads_config_worker/get_environment_config_workloads_config_worker.dart';

class GetEnvironmentConfigWorkloadsConfig {
  /// Configuration for resources used by DAG processor.
  final List<GetEnvironmentConfigWorkloadsConfigDagProcessor> dagProcessors;

  /// Configuration for resources used by Airflow schedulers.
  final List<GetEnvironmentConfigWorkloadsConfigScheduler> schedulers;

  /// Configuration for resources used by Airflow triggerers.
  final List<GetEnvironmentConfigWorkloadsConfigTriggerer> triggerers;

  /// Configuration for resources used by Airflow web server.
  final List<GetEnvironmentConfigWorkloadsConfigWebServer> webServers;

  /// Configuration for resources used by Airflow workers.
  final List<GetEnvironmentConfigWorkloadsConfigWorker> workers;

  GetEnvironmentConfigWorkloadsConfig({
    required this.dagProcessors,
    required this.schedulers,
    required this.triggerers,
    required this.webServers,
    required this.workers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dagProcessors'] = pulumi.Input.encodeList<
        GetEnvironmentConfigWorkloadsConfigDagProcessor,
        Map<String, dynamic>>(dagProcessors, (value) => value.toMap());
    map['schedulers'] = pulumi.Input.encodeList<
        GetEnvironmentConfigWorkloadsConfigScheduler,
        Map<String, dynamic>>(schedulers, (value) => value.toMap());
    map['triggerers'] = pulumi.Input.encodeList<
        GetEnvironmentConfigWorkloadsConfigTriggerer,
        Map<String, dynamic>>(triggerers, (value) => value.toMap());
    map['webServers'] = pulumi.Input.encodeList<
        GetEnvironmentConfigWorkloadsConfigWebServer,
        Map<String, dynamic>>(webServers, (value) => value.toMap());
    map['workers'] = pulumi.Input.encodeList<
        GetEnvironmentConfigWorkloadsConfigWorker,
        Map<String, dynamic>>(workers, (value) => value.toMap());
    return map;
  }

  factory GetEnvironmentConfigWorkloadsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfig(
      dagProcessors: pulumi.Input.decodeList<
              GetEnvironmentConfigWorkloadsConfigDagProcessor>(
          map['dagProcessors'],
          (value) => GetEnvironmentConfigWorkloadsConfigDagProcessor.fromMap(
              (value as Map).cast<String, dynamic>())),
      schedulers:
          pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigScheduler>(
              map['schedulers'],
              (value) => GetEnvironmentConfigWorkloadsConfigScheduler.fromMap(
                  (value as Map).cast<String, dynamic>())),
      triggerers:
          pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigTriggerer>(
              map['triggerers'],
              (value) => GetEnvironmentConfigWorkloadsConfigTriggerer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      webServers:
          pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigWebServer>(
              map['webServers'],
              (value) => GetEnvironmentConfigWorkloadsConfigWebServer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      workers:
          pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfigWorker>(
              map['workers'],
              (value) => GetEnvironmentConfigWorkloadsConfigWorker.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
