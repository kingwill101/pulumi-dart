import 'package:pulumi/pulumi.dart' as pulumi;
import '../build_storage_location/build_storage_location.dart';
import 'build_args.dart';

/// Provides an GameLift Build resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Builds using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/build:Build example <build-id>
/// ```
class Build extends pulumi.CustomResource {
  /// GameLift Build ARN.
  late final pulumi.Output<String> arn;

  /// Name of the build
  late final pulumi.Output<String> name;

  /// Operating system that the game server binaries are built to run on. Valid values: `WINDOWS_2012`, `AMAZON_LINUX`, `AMAZON_LINUX_2`, `WINDOWS_2016`, `AMAZON_LINUX_2023`.
  late final pulumi.Output<String> operatingSystem;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Information indicating where your game build files are stored. See below.
  late final pulumi.Output<BuildStorageLocation> storageLocation;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Version that is associated with this build.
  late final pulumi.Output<String?> version;

  Build(
    String name, {
    BuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/build:Build',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.operatingSystem = registerOutput<String>('operatingSystem');
    this.region = registerOutput<String>('region');
    this.storageLocation =
        registerOutput<BuildStorageLocation>('storageLocation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String?>('version');
  }
}
