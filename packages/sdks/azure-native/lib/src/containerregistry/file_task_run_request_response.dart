// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties_response.dart';
import 'credentials_response.dart';
import 'platform_properties_response.dart';
import 'set_value_response.dart';

/// The request parameters for a scheduling run against a task file.
class FileTaskRunRequestResponse {
  /// The machine configuration of the run agent.
  final pulumi.Input<AgentPropertiesResponse>? agentConfiguration;

  /// The dedicated agent pool for the run.
  final pulumi.Input<String>? agentPoolName;

  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final pulumi.Input<CredentialsResponse>? credentials;

  /// The value that indicates whether archiving is enabled for the run or not.
  final pulumi.Input<bool>? isArchiveEnabled;

  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String>? logTemplate;

  /// The platform properties against which the run has to happen.
  final pulumi.Input<PlatformPropertiesResponse> platform;

  /// The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// If it is relative URL, the relative path should be obtained from calling listBuildSourceUploadUrl API.
  final pulumi.Input<String>? sourceLocation;

  /// The template/definition file path relative to the source.
  final pulumi.Input<String> taskFilePath;

  /// Run timeout in seconds.
  final pulumi.Input<int>? timeout;

  /// The type of the run request.
  /// Expected value is 'FileTaskRunRequest'.
  final pulumi.Input<String> type;

  /// The collection of overridable values that can be passed when running a task.
  final pulumi.Input<List<SetValueResponse>>? values;

  /// The values/parameters file path relative to the source.
  final pulumi.Input<String>? valuesFilePath;

  /// Creates a new [FileTaskRunRequestResponse].
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
  FileTaskRunRequestResponse({
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
      'agentConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentPropertiesResponse,
            Map<String, dynamic>
          >(agentConfiguration, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialsResponse,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'isArchiveEnabled': ?isArchiveEnabled,
      'logTemplate': ?logTemplate,
      'platform':
          pulumi.Input.mapInputValue<
            PlatformPropertiesResponse,
            Map<String, dynamic>
          >(platform, (value) => value.toMap()),
      'sourceLocation': ?sourceLocation,
      'taskFilePath': taskFilePath,
      'timeout': ?timeout,
      'type': type,
      'values':
          ?pulumi.Input.mapOptionalInputValue<
            List<SetValueResponse>,
            List<Map<String, dynamic>>
          >(
            values,
            (value) =>
                pulumi.Input.encodeList<SetValueResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'valuesFilePath': ?valuesFilePath,
    };
  }

  factory FileTaskRunRequestResponse.fromMap(Map<String, dynamic> map) {
    return FileTaskRunRequestResponse(
      agentConfiguration: (() {
        final guardedValue = map['agentConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      agentPoolName: (() {
        final guardedValue = map['agentPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isArchiveEnabled: (() {
        final guardedValue = map['isArchiveEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logTemplate: (() {
        final guardedValue = map['logTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: pulumi.Input.fromValue(
        PlatformPropertiesResponse.fromMap(
          (map['platform']! as Map).cast<String, dynamic>(),
        ),
      ),
      sourceLocation: (() {
        final guardedValue = map['sourceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      taskFilePath: pulumi.Input.fromValue(map['taskFilePath'] as String),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SetValueResponse>(
            guardedValue,
            (value) => SetValueResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      valuesFilePath: (() {
        final guardedValue = map['valuesFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
