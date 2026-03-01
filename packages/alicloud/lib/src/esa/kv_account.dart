import 'package:pulumi/pulumi.dart' as pulumi;

/// ## Import
///
/// ESA Kv Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/kvAccount:KvAccount example
/// ```
class KvAccount extends pulumi.CustomResource {
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [KvAccount].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  KvAccount(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/kvAccount:KvAccount',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
  }
}
