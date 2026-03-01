// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_storage_location.dart';

/// {@template pulumi_gamelift_script_script_args_doc}
/// The set of arguments for Script.
/// {@endtemplate}
/// {@macro pulumi_gamelift_script_script_args_doc}
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

  /// Creates a new [ScriptArgs].
  /// [name] Name of the script
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageLocation] Information indicating where your game script files are stored. See below.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [version] Version that is associated with this script.
  /// [zipFile] A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  ScriptArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ScriptStorageLocation>? storageLocation,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
    pulumi.Output<String>? zipFile,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageLocation = pulumi.Input.asOptionalInput<ScriptStorageLocation>(storageLocation),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      zipFile = pulumi.Input.asOptionalInput<String>(zipFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'storageLocation': ?pulumi.Input.mapOptionalInputValue<ScriptStorageLocation, Map<String, dynamic>>(storageLocation, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
      'zipFile': ?zipFile,
    };
  }

  factory ScriptArgs.fromMap(Map<String, dynamic> map) {
    return ScriptArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageLocation: map['storageLocation'] == null ? null : pulumi.Output.create<ScriptStorageLocation>(ScriptStorageLocation.fromMap((map['storageLocation'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      zipFile: map['zipFile'] == null ? null : pulumi.Output.create<String>(map['zipFile'] as String),
    );
  }
}

