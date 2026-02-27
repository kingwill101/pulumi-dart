import 'package:pulumi/pulumi.dart' as pulumi;
import '../namespace_timeouts/namespace_timeouts.dart';
import 'namespace_args.dart';

/// Resource for managing an AWS QuickSight Namespace.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Namespace using the AWS account ID and namespace separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/namespace:Namespace example 123456789012,example
/// ```
class Namespace extends pulumi.CustomResource {
  /// ARN of the Namespace.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Namespace AWS Region.
  late final pulumi.Output<String> capacityRegion;

  /// Creation status of the namespace.
  late final pulumi.Output<String> creationStatus;

  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  late final pulumi.Output<String> identityStore;

  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<NamespaceTimeouts?> timeouts;

  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.capacityRegion = registerOutput<String>('capacityRegion');
    this.creationStatus = registerOutput<String>('creationStatus');
    this.identityStore = registerOutput<String>('identityStore');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<NamespaceTimeouts?>('timeouts');
  }
}
