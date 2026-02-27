import 'package:pulumi/pulumi.dart';
import '../script_storage_location/script_storage_location.dart';
import 'script_args.dart';

/// Provides an GameLift Script resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Scripts using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/script:Script example <script-id>
/// ```
class Script extends CustomResource {
  /// GameLift Script ARN.
  late final Output<String> arn;

  /// Name of the script
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Information indicating where your game script files are stored. See below.
  late final Output<ScriptStorageLocation> storageLocation;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Version that is associated with this script.
  late final Output<String?> version;

  /// A data object containing your Realtime scripts and dependencies as a zip  file. The zip file can have one or multiple files. Maximum size of a zip file is 5 MB.
  late final Output<String?> zipFile;

  Script(
    String name, {
    ScriptArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/script:Script',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.storageLocation =
        registerOutput<ScriptStorageLocation>('storageLocation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String?>('version');
    this.zipFile = registerOutput<String?>('zipFile');
  }
}
