// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_private_dns_verification_timeouts.dart';

/// {@template pulumi_vpc_endpoint_service_private_dns_verification_endpoint_service_private_dns_verification_args_doc}
/// The set of arguments for EndpointServicePrivateDnsVerification.
/// {@endtemplate}
/// {@macro pulumi_vpc_endpoint_service_private_dns_verification_endpoint_service_private_dns_verification_args_doc}
class EndpointServicePrivateDnsVerificationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceId;
  final pulumi.Input<EndpointServicePrivateDnsVerificationTimeouts>? timeouts;
  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  final pulumi.Input<bool>? waitForVerification;

  /// Creates a new [EndpointServicePrivateDnsVerificationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceId] ID of the endpoint service.
  /// [timeouts] Optional.
  /// [waitForVerification] Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  EndpointServicePrivateDnsVerificationArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceId,
    pulumi.Output<EndpointServicePrivateDnsVerificationTimeouts>? timeouts,
    pulumi.Output<bool>? waitForVerification,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      timeouts = pulumi.Input.asOptionalInput<EndpointServicePrivateDnsVerificationTimeouts>(timeouts),
      waitForVerification = pulumi.Input.asOptionalInput<bool>(waitForVerification);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceId': serviceId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EndpointServicePrivateDnsVerificationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForVerification': ?waitForVerification,
    };
  }

  factory EndpointServicePrivateDnsVerificationArgs.fromMap(Map<String, dynamic> map) {
    return EndpointServicePrivateDnsVerificationArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<EndpointServicePrivateDnsVerificationTimeouts>(EndpointServicePrivateDnsVerificationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      waitForVerification: map['waitForVerification'] == null ? null : pulumi.Output.create<bool>(map['waitForVerification'] as bool),
    );
  }
}

