// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container.dart';
import 'job_template_template_node_selector.dart';
import 'job_template_template_volume.dart';
import 'job_template_template_vpc_access.dart';

class JobTemplateTemplate {
  /// Holds the single container that defines the unit of execution for this task.
  /// Structure is documented below.
  final List<JobTemplateTemplateContainer>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String? encryptionKey;

  /// The execution environment being used to host this Task.
  /// Possible values are: `EXECUTION_ENVIRONMENT_GEN1`, `EXECUTION_ENVIRONMENT_GEN2`.
  final String? executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this execution.
  final bool? gpuZonalRedundancyDisabled;

  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  final int? maxRetries;

  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final JobTemplateTemplateNodeSelector? nodeSelector;

  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String? serviceAccount;

  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? timeout;

  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final List<JobTemplateTemplateVolume>? volumes;

  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final JobTemplateTemplateVpcAccess? vpcAccess;

  /// Creates a new [JobTemplateTemplate].
  /// [containers] Holds the single container that defines the unit of execution for this task.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The execution environment being used to host this Task.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this execution.
  /// [maxRetries] Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccount] Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeout] Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  JobTemplateTemplate({
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.maxRetries,
    this.nodeSelector,
    this.serviceAccount,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers == null
          ? null
          : pulumi.Input.encodeList<
              JobTemplateTemplateContainer,
              Map<String, dynamic>
            >(containers!, (value) => value.toMap()),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?executionEnvironment,
      'gpuZonalRedundancyDisabled': ?gpuZonalRedundancyDisabled,
      'maxRetries': ?maxRetries,
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
      'serviceAccount': ?serviceAccount,
      'timeout': ?timeout,
      'volumes': ?volumes == null
          ? null
          : pulumi.Input.encodeList<
              JobTemplateTemplateVolume,
              Map<String, dynamic>
            >(volumes!, (value) => value.toMap()),
      'vpcAccess': ?vpcAccess == null ? null : vpcAccess!.toMap(),
    };
  }

  factory JobTemplateTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplate(
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateTemplateContainer>(
              map['containers'],
              (value) => JobTemplateTemplateContainer.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      encryptionKey: map['encryptionKey'] == null
          ? null
          : map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] == null
          ? null
          : map['executionEnvironment'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] == null
          ? null
          : map['gpuZonalRedundancyDisabled'] as bool,
      maxRetries: map['maxRetries'] == null ? null : map['maxRetries'] as int,
      nodeSelector: map['nodeSelector'] == null
          ? null
          : JobTemplateTemplateNodeSelector.fromMap(
              (map['nodeSelector'] as Map).cast<String, dynamic>(),
            ),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<JobTemplateTemplateVolume>(
              map['volumes'],
              (value) => JobTemplateTemplateVolume.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      vpcAccess: map['vpcAccess'] == null
          ? null
          : JobTemplateTemplateVpcAccess.fromMap(
              (map['vpcAccess'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
