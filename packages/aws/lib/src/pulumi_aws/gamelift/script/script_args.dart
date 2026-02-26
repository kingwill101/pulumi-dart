// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../script_storage_location/script_storage_location.dart';

/// The set of arguments for Script.
class ScriptArgs {
  /// Name of the script
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Information indicating where your game script files are stored. See below.
  final Input<ScriptStorageLocation>? storageLocation;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Version that is associated with this script.
  final Input<String>? version;

  /// A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  final Input<String>? zipFile;

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
      map['storageLocation'] = Input.mapOptionalInputValue<
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
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      storageLocation:
          Input.asOptionalInput<ScriptStorageLocation>(map['storageLocation']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      version: Input.asOptionalInput<String>(map['version']),
      zipFile: Input.asOptionalInput<String>(map['zipFile']),
    );
  }
}
