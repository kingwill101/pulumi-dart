import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_servicediscovery_args.dart';

/// Provides a Service Discovery Instance resource.
///
/// ## Example Usage
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Instance using the service ID and instance ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/instance:Instance example 0123456789/i-0123
/// ```
class InstanceServicediscovery extends pulumi.CustomResource {
  /// A map contains the attributes of the instance. Check the [doc](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#API_RegisterInstance_RequestSyntax) for the supported attributes and syntax.
  late final pulumi.Output<Map<String, String>> attributes;

  /// The ID of the service instance.
  late final pulumi.Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the service that you want to use to create the instance.
  late final pulumi.Output<String> serviceId;

  InstanceServicediscovery(
    String name, {
    InstanceServicediscoveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<Map<String, String>>('attributes');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
