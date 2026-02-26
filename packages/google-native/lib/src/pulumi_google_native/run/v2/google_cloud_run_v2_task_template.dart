// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_run_v2_container.dart';
import 'google_cloud_run_v2_task_template_execution_environment.dart';
import 'google_cloud_run_v2_volume.dart';
import 'google_cloud_run_v2_vpc_access.dart';

/// TaskTemplate describes the data a task should have when created from a template.
class GoogleCloudRunV2TaskTemplate {
  /// Holds the single container that defines the unit of execution for this task.
  final List<GoogleCloudRunV2Container>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String? encryptionKey;

  /// The execution environment being used to host this Task.
  final GoogleCloudRunV2TaskTemplateExecutionEnvironment? executionEnvironment;

  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3.
  final int? maxRetries;

  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String? serviceAccount;

  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout. Defaults to 600 seconds.
  final String? timeout;

  /// A list of Volumes to make available to containers.
  final List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2TaskTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.maxRetries,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] =
          Input.encodeList<GoogleCloudRunV2Container, Map<String, dynamic>>(
              containersValue, (value) => value.toMap());
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue;
    }
    final executionEnvironmentValue = executionEnvironment;
    if (executionEnvironmentValue != null) {
      map['executionEnvironment'] = executionEnvironmentValue.value;
    }
    final maxRetriesValue = maxRetries;
    if (maxRetriesValue != null) {
      map['maxRetries'] = maxRetriesValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] =
          Input.encodeList<GoogleCloudRunV2Volume, Map<String, dynamic>>(
              volumesValue, (value) => value.toMap());
    }
    final vpcAccessValue = vpcAccess;
    if (vpcAccessValue != null) {
      map['vpcAccess'] = vpcAccessValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRunV2TaskTemplate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2TaskTemplate(
      containers: map['containers'] == null
          ? null
          : Input.decodeList<GoogleCloudRunV2Container>(
              map['containers'],
              (value) => GoogleCloudRunV2Container.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptionKey:
          map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] == null
          ? null
          : GoogleCloudRunV2TaskTemplateExecutionEnvironment.fromValue(
              map['executionEnvironment'] as String),
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<GoogleCloudRunV2Volume>(
              map['volumes'],
              (value) => GoogleCloudRunV2Volume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null
          ? null
          : GoogleCloudRunV2VpcAccess.fromMap(
              (map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
