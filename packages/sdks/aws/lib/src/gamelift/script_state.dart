// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_storage_location.dart';

/// Input properties used for looking up and filtering Script resources.
class ScriptState {
  /// GameLift Script ARN.
  final pulumi.Input<String>? arn;
  /// Name of the script
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Information indicating where your game script files are stored. See below.
  final pulumi.Input<ScriptStorageLocation>? storageLocation;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Version that is associated with this script.
  final pulumi.Input<String>? version;
  /// A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [ScriptState].
  /// [arn] GameLift Script ARN.
  /// [name] Name of the script
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLocation] Information indicating where your game script files are stored. See below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Version that is associated with this script.
  /// [zipFile] A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  ScriptState({
    this.arn,
    this.name,
    this.region,
    this.storageLocation,
    this.tags,
    this.tagsAll,
    this.version,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<ScriptStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
      'zipFile': ?zipFile,
    };
  }

  factory ScriptState.fromMap(Map<String, dynamic> map) {
    return ScriptState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      storageLocation: map['storageLocation'] == null ? null : (ScriptStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      zipFile: map['zipFile'] == null ? null : (map['zipFile'] as String).input(),
    );
  }
}

