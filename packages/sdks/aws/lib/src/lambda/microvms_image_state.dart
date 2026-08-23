// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvms_image_code_artifact.dart';
import 'microvms_image_cpu_configuration.dart';
import 'microvms_image_timeouts.dart';

/// Input properties used for looking up and filtering MicrovmsImage resources.
class MicrovmsImageState {
  /// List of additional OS capabilities granted to the MicroVM runtime environment. Valid values: `ALL`.
  final pulumi.Input<List<String>>? additionalOsCapabilities;
  /// ARN of the Image.
  final pulumi.Input<String>? arn;
  /// ARN of the base MicroVM image. AWS-managed base images use ARNs of the form `arn:aws:lambda:&lt;region&gt;:aws:microvm-image:al2023-1`.
  final pulumi.Input<String>? baseImageArn;
  /// Major version number of the base MicroVM image to use (e.g., `1`). If omitted, the service selects a version.
  final pulumi.Input<String>? baseImageVersion;
  /// ARN of the IAM role used to build the image. The role must be assumable by `lambda.amazonaws.com` and have access to the code artifact.
  final pulumi.Input<String>? buildRoleArn;
  /// Code artifact containing the application code and metadata for the image. See below.
  final pulumi.Input<MicrovmsImageCodeArtifact>? codeArtifact;
  /// CPU configuration for the MicroVM. See `cpuConfiguration` Block below.
  final pulumi.Input<List<MicrovmsImageCpuConfiguration>>? cpuConfigurations;
  /// RFC3339 timestamp when the image was created.
  final pulumi.Input<String>? createdAt;
  /// Description of the MicroVM image.
  final pulumi.Input<String>? description;
  /// List of egress network connectors available to the MicroVM at runtime. Defaults to `["INTERNET_EGRESS"]`.
  final pulumi.Input<List<String>>? egressNetworkConnectors;
  /// Map of environment variables set in the MicroVM runtime environment.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Current version of the image.
  final pulumi.Input<String>? imageVersion;
  /// Latest active version of the image.
  final pulumi.Input<String>? latestActiveImageVersion;
  /// Latest failed version of the image, if any.
  final pulumi.Input<String>? latestFailedImageVersion;
  /// Name of the MicroVM image. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current state of the image (e.g., `CREATED`).
  final pulumi.Input<String>? state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<MicrovmsImageTimeouts>? timeouts;
  /// RFC3339 timestamp when the image was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [MicrovmsImageState].
  /// [additionalOsCapabilities] List of additional OS capabilities granted to the MicroVM runtime environment. Valid values: `ALL`.
  /// [arn] ARN of the Image.
  /// [baseImageArn] ARN of the base MicroVM image. AWS-managed base images use ARNs of the form `arn:aws:lambda:&lt;region&gt;:aws:microvm-image:al2023-1`.
  /// [baseImageVersion] Major version number of the base MicroVM image to use (e.g., `1`). If omitted, the service selects a version.
  /// [buildRoleArn] ARN of the IAM role used to build the image. The role must be assumable by `lambda.amazonaws.com` and have access to the code artifact.
  /// [codeArtifact] Code artifact containing the application code and metadata for the image. See below.
  /// [cpuConfigurations] CPU configuration for the MicroVM. See `cpuConfiguration` Block below.
  /// [createdAt] RFC3339 timestamp when the image was created.
  /// [description] Description of the MicroVM image.
  /// [egressNetworkConnectors] List of egress network connectors available to the MicroVM at runtime. Defaults to `["INTERNET_EGRESS"]`.
  /// [environmentVariables] Map of environment variables set in the MicroVM runtime environment.
  /// [imageVersion] Current version of the image.
  /// [latestActiveImageVersion] Latest active version of the image.
  /// [latestFailedImageVersion] Latest failed version of the image, if any.
  /// [name] Name of the MicroVM image. Changing this value creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] Current state of the image (e.g., `CREATED`).
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [updatedAt] RFC3339 timestamp when the image was last updated.
  const MicrovmsImageState({
    this.additionalOsCapabilities,
    this.arn,
    this.baseImageArn,
    this.baseImageVersion,
    this.buildRoleArn,
    this.codeArtifact,
    this.cpuConfigurations,
    this.createdAt,
    this.description,
    this.egressNetworkConnectors,
    this.environmentVariables,
    this.imageVersion,
    this.latestActiveImageVersion,
    this.latestFailedImageVersion,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOsCapabilities': ?additionalOsCapabilities,
      'arn': ?arn,
      'baseImageArn': ?baseImageArn,
      'baseImageVersion': ?baseImageVersion,
      'buildRoleArn': ?buildRoleArn,
      'codeArtifact': ?pulumi.Input.mapOptionalInputValue<MicrovmsImageCodeArtifact, Map<String, dynamic>>(codeArtifact, (value) => value.toMap()),
      'cpuConfigurations': ?pulumi.Input.mapOptionalInputValue<List<MicrovmsImageCpuConfiguration>, List<Map<String, dynamic>>>(cpuConfigurations, (value) => pulumi.Input.encodeList<MicrovmsImageCpuConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'description': ?description,
      'egressNetworkConnectors': ?egressNetworkConnectors,
      'environmentVariables': ?environmentVariables,
      'imageVersion': ?imageVersion,
      'latestActiveImageVersion': ?latestActiveImageVersion,
      'latestFailedImageVersion': ?latestFailedImageVersion,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MicrovmsImageTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory MicrovmsImageState.fromMap(Map<String, dynamic> map) {
    return MicrovmsImageState(
      additionalOsCapabilities: (() { final guardedValue = map['additionalOsCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseImageArn: (() { final guardedValue = map['baseImageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseImageVersion: (() { final guardedValue = map['baseImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildRoleArn: (() { final guardedValue = map['buildRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeArtifact: (() { final guardedValue = map['codeArtifact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmsImageCodeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuConfigurations: (() { final guardedValue = map['cpuConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MicrovmsImageCpuConfiguration>(guardedValue, (value) => MicrovmsImageCpuConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressNetworkConnectors: (() { final guardedValue = map['egressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestActiveImageVersion: (() { final guardedValue = map['latestActiveImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestFailedImageVersion: (() { final guardedValue = map['latestFailedImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmsImageTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
