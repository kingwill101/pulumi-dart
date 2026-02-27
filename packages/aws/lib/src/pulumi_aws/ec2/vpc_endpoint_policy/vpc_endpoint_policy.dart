import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_policy_args.dart';

/// Provides a VPC Endpoint Policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy example vpce-3ecf2a57
/// ```
class VpcEndpointPolicy extends CustomResource {
  /// A policy to attach to the endpoint that controls access to the service. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The VPC Endpoint ID.
  late final Output<String> vpcEndpointId;

  VpcEndpointPolicy(
    String name, {
    VpcEndpointPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointPolicy:VpcEndpointPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
