import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_allowed_principle_args.dart';

/// Provides a resource to allow a principal to discover a VPC endpoint service.
///
/// > **NOTE on VPC Endpoint Services and VPC Endpoint Service Allowed Principals:** This provider provides
/// both a standalone VPC Endpoint Service Allowed Principal resource
/// and a VPC Endpoint Service resource with an `allowed_principals` attribute. Do not use the same principal ARN in both
/// a VPC Endpoint Service resource and a VPC Endpoint Service Allowed Principal resource. Doing so will cause a conflict
/// and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
class VpcEndpointServiceAllowedPrinciple extends pulumi.CustomResource {
  /// The ARN of the principal to allow permissions.
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC endpoint service to allow permission.
  late final pulumi.Output<String> vpcEndpointServiceId;

  VpcEndpointServiceAllowedPrinciple(
    String name, {
    VpcEndpointServiceAllowedPrincipleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointServiceAllowedPrinciple:VpcEndpointServiceAllowedPrinciple',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
    this.vpcEndpointServiceId = registerOutput<String>('vpcEndpointServiceId');
  }
}
