import 'package:pulumi/pulumi.dart';
import '../endpoint_service_private_dns_verification_timeouts/endpoint_service_private_dns_verification_timeouts.dart';
import 'endpoint_service_private_dns_verification_args.dart';

/// Resource for managing an AWS VPC (Virtual Private Cloud) Endpoint Service Private DNS Verification.
/// This resource begins the verification process by calling the [`StartVpcEndpointServicePrivateDnsVerification`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_StartVpcEndpointServicePrivateDnsVerification.html) API.
/// The service provider should add a record to the DNS server _before_ creating this resource.
///
/// For additional details, refer to the AWS documentation on [managing VPC endpoint service DNS names](https://docs.aws.amazon.com/vpc/latest/privatelink/manage-dns-names.html).
///
/// > Destruction of this resource will not stop the verification process, only remove the resource from state.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// You cannot import this resource.
class EndpointServicePrivateDnsVerification extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceId;
  late final Output<EndpointServicePrivateDnsVerificationTimeouts?> timeouts;

  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  late final Output<bool?> waitForVerification;

  EndpointServicePrivateDnsVerification(
    String name, {
    EndpointServicePrivateDnsVerificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/endpointServicePrivateDnsVerification:EndpointServicePrivateDnsVerification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
    this.timeouts =
        registerOutput<EndpointServicePrivateDnsVerificationTimeouts?>(
            'timeouts');
    this.waitForVerification = registerOutput<bool?>('waitForVerification');
  }
}
