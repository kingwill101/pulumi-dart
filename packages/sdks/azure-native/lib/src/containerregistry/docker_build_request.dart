// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties.dart';
import 'argument.dart';
import 'credentials.dart';
import 'platform_properties.dart';

/// The parameters for a docker quick build.
class DockerBuildRequest {
  /// The machine configuration of the run agent.
  final pulumi.Input<AgentProperties>? agentConfiguration;
  /// The dedicated agent pool for the run.
  final pulumi.Input<String>? agentPoolName;
  /// The collection of override arguments to be used when executing the run.
  final pulumi.Input<List<Argument>>? arguments;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final pulumi.Input<Credentials>? credentials;
  /// The Docker file path relative to the source location.
  final pulumi.Input<String> dockerFilePath;
  /// The fully qualified image names including the repository and tag.
  final pulumi.Input<List<String>>? imageNames;
  /// The value that indicates whether archiving is enabled for the run or not.
  final pulumi.Input<bool>? isArchiveEnabled;
  /// The value of this property indicates whether the image built should be pushed to the registry or not.
  final pulumi.Input<bool>? isPushEnabled;
  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String>? logTemplate;
  /// The value of this property indicates whether the image cache is enabled or not.
  final pulumi.Input<bool>? noCache;
  /// The platform properties against which the run has to happen.
  final pulumi.Input<PlatformProperties> platform;
  /// The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// If it is relative URL, the relative path should be obtained from calling listBuildSourceUploadUrl API.
  final pulumi.Input<String>? sourceLocation;
  /// The name of the target build stage for the docker build.
  final pulumi.Input<String>? target;
  /// Run timeout in seconds.
  final pulumi.Input<int>? timeout;
  /// The type of the run request.
  /// Expected value is 'DockerBuildRequest'.
  final pulumi.Input<String> type;

  /// Creates a new [DockerBuildRequest].
  /// [agentConfiguration] The machine configuration of the run agent.
  /// [agentPoolName] The dedicated agent pool for the run.
  /// [arguments] The collection of override arguments to be used when executing the run.
  /// [credentials] The properties that describes a set of credentials that will be used when this run is invoked.
  /// [dockerFilePath] The Docker file path relative to the source location.
  /// [imageNames] The fully qualified image names including the repository and tag.
  /// [isArchiveEnabled] The value that indicates whether archiving is enabled for the run or not.
  /// [isPushEnabled] The value of this property indicates whether the image built should be pushed to the registry or not.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [noCache] The value of this property indicates whether the image cache is enabled or not.
  /// [platform] The platform properties against which the run has to happen.
  /// [sourceLocation] The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// [target] The name of the target build stage for the docker build.
  /// [timeout] Run timeout in seconds.
  /// [type] The type of the run request.
  const DockerBuildRequest({
    this.agentConfiguration,
    this.agentPoolName,
    this.arguments,
    this.credentials,
    required this.dockerFilePath,
    this.imageNames,
    this.isArchiveEnabled,
    this.isPushEnabled,
    this.logTemplate,
    this.noCache,
    required this.platform,
    this.sourceLocation,
    this.target,
    this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentProperties, Map<String, dynamic>>(agentConfiguration, (value) => value.toMap()),
      'agentPoolName': ?agentPoolName,
      'arguments': ?pulumi.Input.mapOptionalInputValue<List<Argument>, List<Map<String, dynamic>>>(arguments, (value) => pulumi.Input.encodeList<Argument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credentials': ?pulumi.Input.mapOptionalInputValue<Credentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'dockerFilePath': dockerFilePath,
      'imageNames': ?imageNames,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isPushEnabled': ?isPushEnabled,
      'logTemplate': ?logTemplate,
      'noCache': ?noCache,
      'platform': pulumi.Input.mapInputValue<PlatformProperties, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'sourceLocation': ?sourceLocation,
      'target': ?target,
      'timeout': ?timeout,
      'type': type,
    };
  }

  factory DockerBuildRequest.fromMap(Map<String, dynamic> map) {
    return DockerBuildRequest(
      agentConfiguration: (() { final guardedValue = map['agentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      agentPoolName: (() { final guardedValue = map['agentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Argument>(guardedValue, (value) => Argument.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Credentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerFilePath: pulumi.Input.fromValue(map['dockerFilePath'] as String),
      imageNames: (() { final guardedValue = map['imageNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isArchiveEnabled: (() { final guardedValue = map['isArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPushEnabled: (() { final guardedValue = map['isPushEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logTemplate: (() { final guardedValue = map['logTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noCache: (() { final guardedValue = map['noCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      platform: pulumi.Input.fromValue(PlatformProperties.fromMap((map['platform']! as Map).cast<String, dynamic>())),
      sourceLocation: (() { final guardedValue = map['sourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
