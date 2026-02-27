import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_block_public_access_args.dart';

/// Provides a resource to manage the state of the "Block public access for snapshots" setting on region level.
///
/// > **NOTE:** Removing this Terraform resource disables blocking.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the state. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/snapshotBlockPublicAccess:SnapshotBlockPublicAccess example default
/// ```
class SnapshotBlockPublicAccess extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  late final pulumi.Output<String> state;

  SnapshotBlockPublicAccess(
    String name, {
    SnapshotBlockPublicAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotBlockPublicAccess:SnapshotBlockPublicAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
