// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_code_artifact.dart';
import 'image_cpu_configuration.dart';
import 'image_timeouts.dart';

/// {@template pulumi_lambdamicrovms_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_lambdamicrovms_image_image_args_doc}
class ImageArgs {
  /// List of additional OS capabilities granted to the MicroVM runtime environment. Valid values: `ALL`.
  final pulumi.Input<List<String>?>? additionalOsCapabilities;
  /// ARN of the base MicroVM image. AWS-managed base images use ARNs of the form `arn:aws:lambda:&lt;region&gt;:aws:microvm-image:al2023-1`.
  final pulumi.Input<String> baseImageArn;
  /// Major version number of the base MicroVM image to use (e.g., `1`). If omitted, the service selects a version.
  final pulumi.Input<String?>? baseImageVersion;
  /// ARN of the IAM role used to build the image. The role must be assumable by `lambda.amazonaws.com` and have access to the code artifact.
  final pulumi.Input<String> buildRoleArn;
  /// Code artifact containing the application code and metadata for the image. See below.
  final pulumi.Input<ImageCodeArtifact> codeArtifact;
  /// CPU configuration for the MicroVM. See `cpuConfiguration` Block below.
  final pulumi.Input<List<ImageCpuConfiguration>?>? cpuConfigurations;
  /// Description of the MicroVM image.
  final pulumi.Input<String?>? description;
  /// List of egress network connectors available to the MicroVM at runtime. Defaults to `["INTERNET_EGRESS"]`.
  final pulumi.Input<List<String>?>? egressNetworkConnectors;
  /// Map of environment variables set in the MicroVM runtime environment.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Name of the MicroVM image. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ImageTimeouts?>? timeouts;

  /// Creates a new [ImageArgs].
  /// [additionalOsCapabilities] List of additional OS capabilities granted to the MicroVM runtime environment. Valid values: `ALL`.
  /// [baseImageArn] ARN of the base MicroVM image. AWS-managed base images use ARNs of the form `arn:aws:lambda:&lt;region&gt;:aws:microvm-image:al2023-1`.
  /// [baseImageVersion] Major version number of the base MicroVM image to use (e.g., `1`). If omitted, the service selects a version.
  /// [buildRoleArn] ARN of the IAM role used to build the image. The role must be assumable by `lambda.amazonaws.com` and have access to the code artifact.
  /// [codeArtifact] Code artifact containing the application code and metadata for the image. See below.
  /// [cpuConfigurations] CPU configuration for the MicroVM. See `cpuConfiguration` Block below.
  /// [description] Description of the MicroVM image.
  /// [egressNetworkConnectors] List of egress network connectors available to the MicroVM at runtime. Defaults to `["INTERNET_EGRESS"]`.
  /// [environmentVariables] Map of environment variables set in the MicroVM runtime environment.
  /// [name] Name of the MicroVM image. Changing this value creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ImageArgs({
    this.additionalOsCapabilities,
    required this.baseImageArn,
    this.baseImageVersion,
    required this.buildRoleArn,
    required this.codeArtifact,
    this.cpuConfigurations,
    this.description,
    this.egressNetworkConnectors,
    this.environmentVariables,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOsCapabilities': ?additionalOsCapabilities,
      'baseImageArn': baseImageArn,
      'baseImageVersion': ?baseImageVersion,
      'buildRoleArn': buildRoleArn,
      'codeArtifact': pulumi.Input.mapInputValue<ImageCodeArtifact, Map<String, dynamic>>(codeArtifact, (value) => value.toMap()),
      'cpuConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ImageCpuConfiguration>, List<Map<String, dynamic>>>(cpuConfigurations, (value) => pulumi.Input.encodeList<ImageCpuConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'egressNetworkConnectors': ?egressNetworkConnectors,
      'environmentVariables': ?environmentVariables,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ImageTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      additionalOsCapabilities: (() { final guardedValue = map['additionalOsCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      baseImageArn: pulumi.Input.fromValue(map['baseImageArn'] as String),
      baseImageVersion: (() { final guardedValue = map['baseImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildRoleArn: pulumi.Input.fromValue(map['buildRoleArn'] as String),
      codeArtifact: pulumi.Input.fromValue(ImageCodeArtifact.fromMap((map['codeArtifact']! as Map).cast<String, dynamic>())),
      cpuConfigurations: (() { final guardedValue = map['cpuConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageCpuConfiguration>(guardedValue, (value) => ImageCpuConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressNetworkConnectors: (() { final guardedValue = map['egressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
