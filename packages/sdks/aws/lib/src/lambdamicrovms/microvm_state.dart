// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_idle_policy.dart';
import 'microvm_logging.dart';
import 'microvm_timeouts.dart';

/// Input properties used for looking up and filtering Microvm resources.
class MicrovmState {
  /// List of egress network connector ARNs for outbound connectivity. Changing this value creates a new resource.
  final pulumi.Input<List<String>?>? egressNetworkConnectors;
  /// HTTPS endpoint URL for communicating with the MicroVM.
  final pulumi.Input<String?>? endpoint;
  /// ARN of the IAM role assumed by the MicroVM during execution. Changing this value creates a new resource.
  final pulumi.Input<String?>? executionRoleArn;
  /// Configuration controlling automatic suspend and resume behavior. See below. Changing this value creates a new resource.
  final pulumi.Input<MicrovmIdlePolicy?>? idlePolicy;
  /// ARN of the MicroVM image to run. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? imageArn;
  /// Version of the MicroVM image to run. Defaults to the latest active version. Changing this value creates a new resource.
  final pulumi.Input<String?>? imageVersion;
  /// List of ingress network connector ARNs for inbound connectivity. Changing this value creates a new resource.
  final pulumi.Input<List<String>?>? ingressNetworkConnectors;
  /// Logging configuration for the MicroVM. See below. Changing this value creates a new resource.
  final pulumi.Input<MicrovmLogging?>? logging;
  /// Maximum duration in seconds that the MicroVM can exist before the platform terminates it. Valid range: `1`–`28800` (8 hours). Changing this value creates a new resource.
  final pulumi.Input<int?>? maximumDurationInSeconds;
  /// Unique identifier of the MicroVM.
  final pulumi.Input<String?>? microvmId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// String payload (maximum 16 KB) delivered to the `/run` lifecycle hook when the MicroVM starts. Changing this value creates a new resource.
  final pulumi.Input<String?>? runHookPayload;
  /// Timestamp when the MicroVM first started, in RFC 3339 format.
  final pulumi.Input<String?>? startedAt;
  /// Current lifecycle state of the MicroVM (e.g., `RUNNING`).
  final pulumi.Input<String?>? state;
  final pulumi.Input<MicrovmTimeouts?>? timeouts;

  /// Creates a new [MicrovmState].
  /// [egressNetworkConnectors] List of egress network connector ARNs for outbound connectivity. Changing this value creates a new resource.
  /// [endpoint] HTTPS endpoint URL for communicating with the MicroVM.
  /// [executionRoleArn] ARN of the IAM role assumed by the MicroVM during execution. Changing this value creates a new resource.
  /// [idlePolicy] Configuration controlling automatic suspend and resume behavior. See below. Changing this value creates a new resource.
  /// [imageArn] ARN of the MicroVM image to run. Changing this value creates a new resource.
  /// [imageVersion] Version of the MicroVM image to run. Defaults to the latest active version. Changing this value creates a new resource.
  /// [ingressNetworkConnectors] List of ingress network connector ARNs for inbound connectivity. Changing this value creates a new resource.
  /// [logging] Logging configuration for the MicroVM. See below. Changing this value creates a new resource.
  /// [maximumDurationInSeconds] Maximum duration in seconds that the MicroVM can exist before the platform terminates it. Valid range: `1`–`28800` (8 hours). Changing this value creates a new resource.
  /// [microvmId] Unique identifier of the MicroVM.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runHookPayload] String payload (maximum 16 KB) delivered to the `/run` lifecycle hook when the MicroVM starts. Changing this value creates a new resource.
  /// [startedAt] Timestamp when the MicroVM first started, in RFC 3339 format.
  /// [state] Current lifecycle state of the MicroVM (e.g., `RUNNING`).
  /// [timeouts] Optional.
  const MicrovmState({
    this.egressNetworkConnectors,
    this.endpoint,
    this.executionRoleArn,
    this.idlePolicy,
    this.imageArn,
    this.imageVersion,
    this.ingressNetworkConnectors,
    this.logging,
    this.maximumDurationInSeconds,
    this.microvmId,
    this.region,
    this.runHookPayload,
    this.startedAt,
    this.state,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNetworkConnectors': ?egressNetworkConnectors,
      'endpoint': ?endpoint,
      'executionRoleArn': ?executionRoleArn,
      'idlePolicy': ?pulumi.Input.mapOptionalInputValue<MicrovmIdlePolicy, Map<String, dynamic>>(idlePolicy, (value) => value.toMap()),
      'imageArn': ?imageArn,
      'imageVersion': ?imageVersion,
      'ingressNetworkConnectors': ?ingressNetworkConnectors,
      'logging': ?pulumi.Input.mapOptionalInputValue<MicrovmLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'maximumDurationInSeconds': ?maximumDurationInSeconds,
      'microvmId': ?microvmId,
      'region': ?region,
      'runHookPayload': ?runHookPayload,
      'startedAt': ?startedAt,
      'state': ?state,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MicrovmTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MicrovmState.fromMap(Map<String, dynamic> map) {
    return MicrovmState(
      egressNetworkConnectors: (() { final guardedValue = map['egressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idlePolicy: (() { final guardedValue = map['idlePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmIdlePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageArn: (() { final guardedValue = map['imageArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressNetworkConnectors: (() { final guardedValue = map['ingressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumDurationInSeconds: (() { final guardedValue = map['maximumDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      microvmId: (() { final guardedValue = map['microvmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runHookPayload: (() { final guardedValue = map['runHookPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
