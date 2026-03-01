// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_properties.dart';
import 'argument.dart';
import 'credentials.dart';
import 'platform_properties.dart';

/// The parameters for a docker quick build.
class DockerBuildRequest {
  /// The machine configuration of the run agent.
  final AgentProperties? agentConfiguration;
  /// The dedicated agent pool for the run.
  final String? agentPoolName;
  /// The collection of override arguments to be used when executing the run.
  final List<Argument>? arguments;
  /// The properties that describes a set of credentials that will be used when this run is invoked.
  final Credentials? credentials;
  /// The Docker file path relative to the source location.
  final String dockerFilePath;
  /// The fully qualified image names including the repository and tag.
  final List<String>? imageNames;
  /// The value that indicates whether archiving is enabled for the run or not.
  final bool? isArchiveEnabled;
  /// The value of this property indicates whether the image built should be pushed to the registry or not.
  final bool? isPushEnabled;
  /// The template that describes the repository and tag information for run log artifact.
  final String? logTemplate;
  /// The value of this property indicates whether the image cache is enabled or not.
  final bool? noCache;
  /// The platform properties against which the run has to happen.
  final PlatformProperties platform;
  /// The URL(absolute or relative) of the source context. It can be an URL to a tar or git repository.
  /// If it is relative URL, the relative path should be obtained from calling listBuildSourceUploadUrl API.
  final String? sourceLocation;
  /// The name of the target build stage for the docker build.
  final String? target;
  /// Run timeout in seconds.
  final int? timeout;
  /// The type of the run request.
  /// Expected value is 'DockerBuildRequest'.
  final String type;

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
  DockerBuildRequest({
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
      'agentConfiguration': ?agentConfiguration == null ? null : agentConfiguration!.toMap(),
      'agentPoolName': ?agentPoolName,
      'arguments': ?arguments == null ? null : pulumi.Input.encodeList<Argument, Map<String, dynamic>>(arguments!, (value) => value.toMap()),
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'dockerFilePath': dockerFilePath,
      'imageNames': ?imageNames,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isPushEnabled': ?isPushEnabled,
      'logTemplate': ?logTemplate,
      'noCache': ?noCache,
      'platform': platform.toMap(),
      'sourceLocation': ?sourceLocation,
      'target': ?target,
      'timeout': ?timeout,
      'type': type,
    };
  }

  factory DockerBuildRequest.fromMap(Map<String, dynamic> map) {
    return DockerBuildRequest(
      agentConfiguration: map['agentConfiguration'] == null ? null : AgentProperties.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>()),
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      arguments: map['arguments'] == null ? null : pulumi.Input.decodeList<Argument>(map['arguments'], (value) => Argument.fromMap((value as Map).cast<String, dynamic>())),
      credentials: map['credentials'] == null ? null : Credentials.fromMap((map['credentials'] as Map).cast<String, dynamic>()),
      dockerFilePath: map['dockerFilePath'] as String,
      imageNames: map['imageNames'] == null ? null : (map['imageNames'] as List).cast<String>(),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      isPushEnabled: map['isPushEnabled'] == null ? null : map['isPushEnabled'] as bool,
      logTemplate: map['logTemplate'] == null ? null : map['logTemplate'] as String,
      noCache: map['noCache'] == null ? null : map['noCache'] as bool,
      platform: PlatformProperties.fromMap((map['platform'] as Map).cast<String, dynamic>()),
      sourceLocation: map['sourceLocation'] == null ? null : map['sourceLocation'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      type: map['type'] as String,
    );
  }
}

