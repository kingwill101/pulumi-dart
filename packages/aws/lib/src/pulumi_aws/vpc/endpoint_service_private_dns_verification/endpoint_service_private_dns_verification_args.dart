// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_service_private_dns_verification_timeouts/endpoint_service_private_dns_verification_timeouts.dart';

/// The set of arguments for EndpointServicePrivateDnsVerification.
class EndpointServicePrivateDnsVerificationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  final Input<String> serviceId;
  final Input<EndpointServicePrivateDnsVerificationTimeouts>? timeouts;

  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  final Input<bool>? waitForVerification;

  EndpointServicePrivateDnsVerificationArgs({
    this.region,
    required this.serviceId,
    this.timeouts,
    this.waitForVerification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceId'] = serviceId;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          EndpointServicePrivateDnsVerificationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final waitForVerificationValue = waitForVerification;
    if (waitForVerificationValue != null) {
      map['waitForVerification'] = waitForVerificationValue;
    }
    return map;
  }

  factory EndpointServicePrivateDnsVerificationArgs.fromMap(
      Map<String, dynamic> map) {
    return EndpointServicePrivateDnsVerificationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      serviceId: Input.asInput<String>(map['serviceId']),
      timeouts:
          Input.asOptionalInput<EndpointServicePrivateDnsVerificationTimeouts>(
              map['timeouts']),
      waitForVerification:
          Input.asOptionalInput<bool>(map['waitForVerification']),
    );
  }
}
