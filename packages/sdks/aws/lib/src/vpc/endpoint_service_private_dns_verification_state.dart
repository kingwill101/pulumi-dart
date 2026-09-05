// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_private_dns_verification_timeouts.dart';

/// Input properties used for looking up and filtering EndpointServicePrivateDnsVerification resources.
class EndpointServicePrivateDnsVerificationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? serviceId;
  final pulumi.Input<EndpointServicePrivateDnsVerificationTimeouts?>? timeouts;
  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  final pulumi.Input<bool?>? waitForVerification;

  /// Creates a new [EndpointServicePrivateDnsVerificationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceId] ID of the endpoint service.
  /// [timeouts] Optional.
  /// [waitForVerification] Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  const EndpointServicePrivateDnsVerificationState({
    this.region,
    this.serviceId,
    this.timeouts,
    this.waitForVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceId': ?serviceId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<EndpointServicePrivateDnsVerificationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForVerification': ?waitForVerification,
    };
  }

  factory EndpointServicePrivateDnsVerificationState.fromMap(Map<String, dynamic> map) {
    return EndpointServicePrivateDnsVerificationState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointServicePrivateDnsVerificationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      waitForVerification: (() { final guardedValue = map['waitForVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
