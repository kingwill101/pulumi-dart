// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_template_template_container.dart';
import 'get_job_template_template_node_selector.dart';
import 'get_job_template_template_volume.dart';
import 'get_job_template_template_vpc_access.dart';

class GetJobTemplateTemplate {
  /// Holds the single container that defines the unit of execution for this task.
  final List<GetJobTemplateTemplateContainer> containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String encryptionKey;

  /// The execution environment being used to host this Task. Possible values: ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]
  final String executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this execution.
  final bool gpuZonalRedundancyDisabled;

  /// Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  final int maxRetries;

  /// Node Selector describes the hardware requirements of the resources.
  final List<GetJobTemplateTemplateNodeSelector> nodeSelectors;

  /// Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  final String serviceAccount;

  /// Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String timeout;

  /// A list of Volumes to make available to containers.
  final List<GetJobTemplateTemplateVolume> volumes;

  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final List<GetJobTemplateTemplateVpcAccess> vpcAccesses;

  /// Creates a new [GetJobTemplateTemplate].
  /// [containers] Holds the single container that defines the unit of execution for this task.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The execution environment being used to host this Task. Possible values: ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this execution.
  /// [maxRetries] Number of retries allowed per Task, before marking this Task failed. Defaults to 3. Minimum value is 0.
  /// [nodeSelectors] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccount] Email address of the IAM service account associated with the Task of a Job. The service account represents the identity of the running task, and determines what permissions the task has. If not provided, the task will use the project's default service account.
  /// [timeout] Max allowed time duration the Task may be active before the system will actively try to mark it failed and kill associated containers. This applies per attempt of a task, meaning each retry can run for the full timeout.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccesses] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GetJobTemplateTemplate({
    required this.containers,
    required this.encryptionKey,
    required this.executionEnvironment,
    required this.gpuZonalRedundancyDisabled,
    required this.maxRetries,
    required this.nodeSelectors,
    required this.serviceAccount,
    required this.timeout,
    required this.volumes,
    required this.vpcAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers':
          pulumi.Input.encodeList<
            GetJobTemplateTemplateContainer,
            Map<String, dynamic>
          >(containers, (value) => value.toMap()),
      'encryptionKey': encryptionKey,
      'executionEnvironment': executionEnvironment,
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled,
      'maxRetries': maxRetries,
      'nodeSelectors':
          pulumi.Input.encodeList<
            GetJobTemplateTemplateNodeSelector,
            Map<String, dynamic>
          >(nodeSelectors, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'timeout': timeout,
      'volumes':
          pulumi.Input.encodeList<
            GetJobTemplateTemplateVolume,
            Map<String, dynamic>
          >(volumes, (value) => value.toMap()),
      'vpcAccesses':
          pulumi.Input.encodeList<
            GetJobTemplateTemplateVpcAccess,
            Map<String, dynamic>
          >(vpcAccesses, (value) => value.toMap()),
    };
  }

  factory GetJobTemplateTemplate.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplate(
      containers: pulumi.Input.decodeList<GetJobTemplateTemplateContainer>(
        map['containers'],
        (value) => GetJobTemplateTemplateContainer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      encryptionKey: map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] as bool,
      maxRetries: map['maxRetries'] as int,
      nodeSelectors:
          pulumi.Input.decodeList<GetJobTemplateTemplateNodeSelector>(
            map['nodeSelectors'],
            (value) => GetJobTemplateTemplateNodeSelector.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      serviceAccount: map['serviceAccount'] as String,
      timeout: map['timeout'] as String,
      volumes: pulumi.Input.decodeList<GetJobTemplateTemplateVolume>(
        map['volumes'],
        (value) => GetJobTemplateTemplateVolume.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      vpcAccesses: pulumi.Input.decodeList<GetJobTemplateTemplateVpcAccess>(
        map['vpcAccesses'],
        (value) => GetJobTemplateTemplateVpcAccess.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
