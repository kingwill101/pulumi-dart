import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_args.dart';

/// Manages a Network Manager Global Network.
///
/// Use this resource to create and manage a global network, which is a single private network that acts as the high-level container for your network objects.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.GlobalNetwork` using the global network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/globalNetwork:GlobalNetwork example global-network-0d47f6t230mz46dy4
/// ```
class GlobalNetwork extends pulumi.CustomResource {
  /// Global Network ARN.
  late final pulumi.Output<String> arn;

  /// Description of the Global Network.
  late final pulumi.Output<String?> description;

  /// Key-value tags for the Global Network. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  GlobalNetwork(
    String name, {
    GlobalNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/globalNetwork:GlobalNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
