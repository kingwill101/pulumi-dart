// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../build_storage_location/build_storage_location.dart';

/// The set of arguments for Build.
class BuildArgs {
  /// Name of the build
  final Input<String>? name;

  /// Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  final Input<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Information indicating where your game build files are stored. See below.
  final Input<BuildStorageLocation> storageLocation;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Version that is associated with this build.
  final Input<String>? version;

  BuildArgs({
    this.name,
    required this.operatingSystem,
    this.region,
    required this.storageLocation,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['operatingSystem'] = operatingSystem;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['storageLocation'] =
        Input.mapInputValue<BuildStorageLocation, Map<String, dynamic>>(
            storageLocation, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory BuildArgs.fromMap(Map<String, dynamic> map) {
    return BuildArgs(
      name: Input.asOptionalInput<String>(map['name']),
      operatingSystem: Input.asInput<String>(map['operatingSystem']),
      region: Input.asOptionalInput<String>(map['region']),
      storageLocation:
          Input.asInput<BuildStorageLocation>(map['storageLocation']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
