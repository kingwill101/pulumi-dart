// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_private_dns_verification_timeouts.dart';

/// {@template pulumi_vpc_endpoint_service_private_dns_verification_endpoint_service_private_dns_verification_args_doc}
/// The set of arguments for EndpointServicePrivateDnsVerification.
/// {@endtemplate}
/// {@macro pulumi_vpc_endpoint_service_private_dns_verification_endpoint_service_private_dns_verification_args_doc}
class EndpointServicePrivateDnsVerificationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceId;
  final pulumi.Input<EndpointServicePrivateDnsVerificationTimeouts?>? timeouts;
  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  final pulumi.Input<bool?>? waitForVerification;

  /// Creates a new [EndpointServicePrivateDnsVerificationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceId] ID of the endpoint service.
  /// [timeouts] Optional.
  /// [waitForVerification] Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  const EndpointServicePrivateDnsVerificationArgs({
    this.region,
    required this.serviceId,
    this.timeouts,
    this.waitForVerification,
  });

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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointServicePrivateDnsVerificationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForVerification: (() { final guardedValue = map['waitForVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
