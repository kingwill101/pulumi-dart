// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../script_storage_location/script_storage_location.dart';

/// The set of arguments for Script.
class ScriptArgs {
  /// Name of the script
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Information indicating where your game script files are stored. See below.
  final pulumi.Input<ScriptStorageLocation>? storageLocation;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Version that is associated with this script.
  final pulumi.Input<String>? version;

  /// A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  final pulumi.Input<String>? zipFile;

  ScriptArgs({
    this.name,
    this.region,
    this.storageLocation,
    this.tags,
    this.version,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageLocationValue = storageLocation;
    if (storageLocationValue != null) {
      map['storageLocation'] = pulumi.Input.mapOptionalInputValue<
          ScriptStorageLocation,
          Map<String, dynamic>>(storageLocationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final zipFileValue = zipFile;
    if (zipFileValue != null) {
      map['zipFile'] = zipFileValue;
    }
    return map;
  }

  factory ScriptArgs.fromMap(Map<String, dynamic> map) {
    return ScriptArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageLocation: pulumi.Input.asOptionalInput<ScriptStorageLocation>(
          map['storageLocation']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
      zipFile: pulumi.Input.asOptionalInput<String>(map['zipFile']),
    );
  }
}
