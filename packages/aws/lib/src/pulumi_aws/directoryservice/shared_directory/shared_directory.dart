import 'package:pulumi/pulumi.dart' as pulumi;
import '../shared_directory_target/shared_directory_target.dart';
import 'shared_directory_args.dart';

/// Manages a directory in your account (directory owner) shared with another account (directory consumer).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Shared Directories using the owner directory ID/shared directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/sharedDirectory:SharedDirectory example d-1234567890/d-9267633ece
/// ```
class SharedDirectory extends pulumi.CustomResource {
  /// Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  late final pulumi.Output<String> directoryId;

  /// Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  late final pulumi.Output<String?> method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  late final pulumi.Output<String?> notes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  late final pulumi.Output<String> sharedDirectoryId;

  /// Identifier for the directory consumer account with whom the directory is to be shared. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<SharedDirectoryTarget> target;

  SharedDirectory(
    String name, {
    SharedDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/sharedDirectory:SharedDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.method = registerOutput<String?>('method');
    this.notes = registerOutput<String?>('notes');
    this.region = registerOutput<String>('region');
    this.sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
    this.target = registerOutput<SharedDirectoryTarget>('target');
  }
}
