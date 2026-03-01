// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties.dart';
import 'credentials.dart';
import 'platform_properties.dart';
import 'set_value.dart';

/// The request parameters for a scheduling run against a task file.
class FileTaskRunRequest {
  /// The machine configuration of the run agent.
  final AgentProperties? agentConfiguration;
  /// The dedicated agent pool for the run.
  final String? agentPoolName;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final Credentials? credentials;
  /// The value that indicates whether archiving is enabled for the run or not.
  final bool? isArchiveEnabled;
  /// The template that describes the repository and tag information for run log artifact.
  final String? logTemplate;
  /// The platform properties against which the run has to happen.
  final PlatformProperties platform;
  /// The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// If it is relative URL, the relative path should be obtained from calling listBuildSourceUploadUrl API.
  final String? sourceLocation;
  /// The template/definition file path relative to the source.
  final String taskFilePath;
  /// Run timeout in seconds.
  final int? timeout;
  /// The type of the run request.
  /// Expected value is 'FileTaskRunRequest'.
  final String type;
  /// The collection of overridable values that can be passed when running a task.
  final List<SetValue>? values;
  /// The values/parameters file path relative to the source.
  final String? valuesFilePath;

  /// Creates a new [FileTaskRunRequest].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the run.
  /// [credentials] The properties that describes a set of credentials that will be used when this run is invoked.
  /// [isArchiveEnabled] The value that indicates whether archiving is enabled for the run or not.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [platform] The platform properties against which the run has to happen.
  /// [sourceLocation] The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// [taskFilePath] The template/definition file path relative to the source.
  /// [timeout] Run timeout in seconds.
  /// [type] The type of the run request.
  /// [values] The collection of overridable values that can be passed when running a task.
  /// [valuesFilePath] The values/parameters file path relative to the source.
  FileTaskRunRequest({
    this.agentConfiguration,
    this.agentPoolName,
    this.credentials,
    this.isArchiveEnabled,
    this.logTemplate,
    required this.platform,
    this.sourceLocation,
    required this.taskFilePath,
    this.timeout,
    required this.type,
    this.values,
    this.valuesFilePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?agentConfiguration == null ? null : agentConfiguration!.toMap(),
      'agentPoolName': ?agentPoolName,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'isArchiveEnabled': ?isArchiveEnabled,
      'logTemplate': ?logTemplate,
      'platform': platform.toMap(),
      'sourceLocation': ?sourceLocation,
      'taskFilePath': taskFilePath,
      'timeout': ?timeout,
      'type': type,
      'values': ?values == null ? null : pulumi.Input.encodeList<SetValue, Map<String, dynamic>>(values!, (value) => value.toMap()),
      'valuesFilePath': ?valuesFilePath,
    };
  }

  factory FileTaskRunRequest.fromMap(Map<String, dynamic> map) {
    return FileTaskRunRequest(
      agentConfiguration: map['agentConfiguration'] == null ? null : AgentProperties.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>()),
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      credentials: map['credentials'] == null ? null : Credentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      logTemplate: map['logTemplate'] == null ? null : map['logTemplate'] as String,
      platform: PlatformProperties.fromMap((map['platform'] as Map).cast<String, dynamic>()),
      sourceLocation: map['sourceLocation'] == null ? null : map['sourceLocation'] as String,
      taskFilePath: map['taskFilePath'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      type: map['type'] as String,
      values: map['values'] == null ? null : pulumi.Input.decodeList<SetValue>(map['values'], (value) => SetValue.fromMap((value as Map).cast<String, dynamic>())),
      valuesFilePath: map['valuesFilePath'] == null ? null : map['valuesFilePath'] as String,
    );
  }
}

