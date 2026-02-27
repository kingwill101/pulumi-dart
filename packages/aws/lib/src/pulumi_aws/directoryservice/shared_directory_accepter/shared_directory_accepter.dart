import 'package:pulumi/pulumi.dart';
import 'shared_directory_accepter_args.dart';

/// Accepts a shared directory in a consumer account.
///
/// > **NOTE:** Destroying this resource removes the shared directory from the consumer account only.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Shared Directories using the shared directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/sharedDirectoryAccepter:SharedDirectoryAccepter example d-9267633ece
/// ```
class SharedDirectoryAccepter extends CustomResource {
  /// Method used when sharing a directory (i.e., `ORGANIZATIONS` or `HANDSHAKE`).
  late final Output<String> method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  late final Output<String> notes;

  /// Account identifier of the directory owner.
  late final Output<String> ownerAccountId;

  /// Identifier of the Managed Microsoft AD directory from the perspective of the directory owner.
  late final Output<String> ownerDirectoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  late final Output<String> sharedDirectoryId;

  SharedDirectoryAccepter(
    String name, {
    SharedDirectoryAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/sharedDirectoryAccepter:SharedDirectoryAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.method = registerOutput<String>('method');
    this.notes = registerOutput<String>('notes');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.ownerDirectoryId = registerOutput<String>('ownerDirectoryId');
    this.region = registerOutput<String>('region');
    this.sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
  }
}
