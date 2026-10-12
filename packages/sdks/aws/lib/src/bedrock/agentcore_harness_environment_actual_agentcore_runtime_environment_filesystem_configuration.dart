// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_filesystem_configuration_efs_access_point.dart';
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_filesystem_configuration_s3_files_access_point.dart';
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_filesystem_configuration_session_storage.dart';

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration {
  /// Amazon EFS access point mounted as shared file storage. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.efs_access_point` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>> efsAccessPoints;
  /// Amazon S3 Files access point mounted as shared file storage. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.s3_files_access_point` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>> s3FilesAccessPoints;
  /// Session storage filesystem. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.session_storage` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>> sessionStorages;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration].
  /// [efsAccessPoints] Amazon EFS access point mounted as shared file storage. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.efs_access_point` Block below.
  /// [s3FilesAccessPoints] Amazon S3 Files access point mounted as shared file storage. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.s3_files_access_point` Block below.
  /// [sessionStorages] Session storage filesystem. See `environment_actual.agentcore_runtime_environment.filesystem_configuration.session_storage` Block below.
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration({
    required this.efsAccessPoints,
    required this.s3FilesAccessPoints,
    required this.sessionStorages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsAccessPoints': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>, List<Map<String, dynamic>>>(efsAccessPoints, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      's3FilesAccessPoints': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>, List<Map<String, dynamic>>>(s3FilesAccessPoints, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionStorages': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>, List<Map<String, dynamic>>>(sessionStorages, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfiguration(
      efsAccessPoints: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint>(map['efsAccessPoints']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationEfsAccessPoint.fromMap((value as Map).cast<String, dynamic>()))),
      s3FilesAccessPoints: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint>(map['s3FilesAccessPoints']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationS3FilesAccessPoint.fromMap((value as Map).cast<String, dynamic>()))),
      sessionStorages: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage>(map['sessionStorages']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentFilesystemConfigurationSessionStorage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
