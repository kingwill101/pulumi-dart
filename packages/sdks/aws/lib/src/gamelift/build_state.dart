// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_storage_location.dart';

/// Input properties used for looking up and filtering Build resources.
class BuildState {
  /// GameLift Build ARN.
  final pulumi.Input<String?>? arn;
  /// Name of the build
  final pulumi.Input<String?>? name;
  /// Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  final pulumi.Input<String?>? operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Information indicating where your game build files are stored. See below.
  final pulumi.Input<BuildStorageLocation?>? storageLocation;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Version that is associated with this build.
  final pulumi.Input<String?>? version;

  /// Creates a new [BuildState].
  /// [arn] GameLift Build ARN.
  /// [name] Name of the build
  /// [operatingSystem] Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLocation] Information indicating where your game build files are stored. See below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [version] Version that is associated with this build.
  const BuildState({
    this.arn,
    this.name,
    this.operatingSystem,
    this.region,
    this.storageLocation,
    this.tags,
    this.tagsAll,
    this.version,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageLocation: (() { final guardedValue = map['storageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
