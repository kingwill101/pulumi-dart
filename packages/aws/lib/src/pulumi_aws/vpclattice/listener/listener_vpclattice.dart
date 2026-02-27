import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action/listener_default_action_vpclattice.dart';
import 'listener_vpclattice_args.dart';

/// Resource for managing an AWS VPC Lattice Listener.
///
/// ## Example Usage
///
/// ### Fixed response action
///
///
///
/// ### Forward action
///
///
///
/// ### Forward action with weighted target groups
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Listener using the `listener_id` of the listener and the `id` of the VPC Lattice service combined with a `/` character. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/listener:Listener example svc-1a2b3c4d/listener-987654321
/// ```
class ListenerVpclattice extends pulumi.CustomResource {
  /// ARN of the listener.
  late final pulumi.Output<String> arn;

  /// Date and time that the listener was created, specified in ISO-8601 format.
  late final pulumi.Output<String> createdAt;

  /// Default action block for the default listener rule. Default action blocks are defined below.
  late final pulumi.Output<ListenerDefaultActionVpclattice> defaultAction;
  late final pulumi.Output<String> lastUpdatedAt;

  /// Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  late final pulumi.Output<String> listenerId;

  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  late final pulumi.Output<String> name;

  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  late final pulumi.Output<int> port;

  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  late final pulumi.Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  late final pulumi.Output<String> serviceArn;

  /// ID of the VPC Lattice service. You must include either the `service_arn` or `service_identifier` arguments.
  /// > **NOTE:** You must specify one of the following arguments: `service_arn` or `service_identifier`.
  late final pulumi.Output<String> serviceIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  ListenerVpclattice(
    String name, {
    ListenerVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.defaultAction =
        registerOutput<ListenerDefaultActionVpclattice>('defaultAction');
    this.lastUpdatedAt = registerOutput<String>('lastUpdatedAt');
    this.listenerId = registerOutput<String>('listenerId');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.serviceIdentifier = registerOutput<String>('serviceIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
