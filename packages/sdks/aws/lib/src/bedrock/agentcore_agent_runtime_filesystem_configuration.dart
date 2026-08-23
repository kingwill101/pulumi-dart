// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_filesystem_configuration_efs_access_point.dart';
import 'agentcore_agent_runtime_filesystem_configuration_s3_files_access_point.dart';
import 'agentcore_agent_runtime_filesystem_configuration_session_storage.dart';

class AgentcoreAgentRuntimeFilesystemConfiguration {
  /// Amazon EFS access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `efsAccessPoint` below.
  final pulumi.Input<AgentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint>? efsAccessPoint;
  /// Amazon S3 Files access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `s3FilesAccessPoint` below.
  final pulumi.Input<AgentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint>? s3FilesAccessPoint;
  /// Session storage filesystem providing persistent storage across agent runtime session invocations. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `sessionStorage` below.
  final pulumi.Input<AgentcoreAgentRuntimeFilesystemConfigurationSessionStorage>? sessionStorage;

  /// Creates a new [AgentcoreAgentRuntimeFilesystemConfiguration].
  /// [efsAccessPoint] Amazon EFS access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `efsAccessPoint` below.
  /// [s3FilesAccessPoint] Amazon S3 Files access point to mount as shared file storage. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `s3FilesAccessPoint` below.
  /// [sessionStorage] Session storage filesystem providing persistent storage across agent runtime session invocations. Exactly one of `sessionStorage`, `s3FilesAccessPoint`, or `efsAccessPoint` must be specified. See `sessionStorage` below.
  const AgentcoreAgentRuntimeFilesystemConfiguration({
    this.efsAccessPoint,
    this.s3FilesAccessPoint,
    this.sessionStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsAccessPoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint, Map<String, dynamic>>(efsAccessPoint, (value) => value.toMap()),
      's3FilesAccessPoint': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint, Map<String, dynamic>>(s3FilesAccessPoint, (value) => value.toMap()),
      'sessionStorage': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeFilesystemConfigurationSessionStorage, Map<String, dynamic>>(sessionStorage, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeFilesystemConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeFilesystemConfiguration(
      efsAccessPoint: (() { final guardedValue = map['efsAccessPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeFilesystemConfigurationEfsAccessPoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3FilesAccessPoint: (() { final guardedValue = map['s3FilesAccessPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeFilesystemConfigurationS3FilesAccessPoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionStorage: (() { final guardedValue = map['sessionStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeFilesystemConfigurationSessionStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
