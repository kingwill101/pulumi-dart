import 'package:pulumi/pulumi.dart';
import 'autokey_config_args.dart';

/// ## Example Usage
///
/// ### Kms Autokey Config All
///
///
///
///
/// ## Import
///
/// AutokeyConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/autokeyConfig`
///
/// * `{{folder}}`
///
/// When using the `pulumi import` command, AutokeyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/autokeyConfig:AutokeyConfig default folders/{{folder}}/autokeyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/autokeyConfig:AutokeyConfig default {{folder}}
/// ```
class AutokeyConfig extends CustomResource {
  /// The etag of the AutokeyConfig for optimistic concurrency control.
  late final Output<String> etag;

  /// The folder for which to retrieve config.
  late final Output<String> folder;

  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/<project_id_or_number>`.
  late final Output<String?> keyProject;

  AutokeyConfig(
    String name, {
    AutokeyConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/autokeyConfig:AutokeyConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.keyProject = registerOutput<String?>('keyProject');
  }
}
