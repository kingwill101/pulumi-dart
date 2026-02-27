import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_attachment_args.dart';

/// Manages a Lightsail Load Balancer Attachment. Use this resource to attach Lightsail instances to a load balancer for distributing traffic across multiple instances.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbAttachment` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbAttachment:LbAttachment example example-load-balancer,example-instance
/// ```
class LbAttachment extends pulumi.CustomResource {
  /// Name of the instance to attach to the load balancer.
  late final pulumi.Output<String> instanceName;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LbAttachment(
    String name, {
    LbAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbAttachment:LbAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceName = registerOutput<String>('instanceName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
