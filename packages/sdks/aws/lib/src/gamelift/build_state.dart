// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_storage_location.dart';

/// Input properties used for looking up and filtering Build resources.
class BuildState {
  /// GameLift Build ARN.
  final pulumi.Input<String>? arn;
  /// Name of the build
  final pulumi.Input<String>? name;
  /// Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  final pulumi.Input<String>? operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Information indicating where your game build files are stored. See below.
  final pulumi.Input<BuildStorageLocation>? storageLocation;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Version that is associated with this build.
  final pulumi.Input<String>? version;

  /// Creates a new [BuildState].
  /// [arn] GameLift Build ARN.
  /// [name] Name of the build
  /// [operatingSystem] Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLocation] Information indicating where your game build files are stored. See below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Version that is associated with this build.
  BuildState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? operatingSystem,
    pulumi.Output<String>? region,
    pulumi.Output<BuildStorageLocation>? storageLocation,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageLocation = pulumi.Input.asOptionalInput<BuildStorageLocation>(storageLocation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'operatingSystem': ?operatingSystem,
      'region': ?region,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<BuildStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory BuildState.fromMap(Map<String, dynamic> map) {
    return BuildState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<String>(map['operatingSystem'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<BuildStorageLocation>(BuildStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

