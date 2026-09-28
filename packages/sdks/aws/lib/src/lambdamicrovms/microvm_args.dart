// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvm_idle_policy.dart';
import 'microvm_logging.dart';
import 'microvm_timeouts.dart';

/// {@template pulumi_lambdamicrovms_microvm_microvm_args_doc}
/// The set of arguments for Microvm.
/// {@endtemplate}
/// {@macro pulumi_lambdamicrovms_microvm_microvm_args_doc}
class MicrovmArgs {
  /// List of egress network connector ARNs for outbound connectivity. Changing this value creates a new resource.
  final pulumi.Input<List<String>?>? egressNetworkConnectors;
  /// ARN of the IAM role assumed by the MicroVM during execution. Changing this value creates a new resource.
  final pulumi.Input<String?>? executionRoleArn;
  /// Configuration controlling automatic suspend and resume behavior. See below. Changing this value creates a new resource.
  final pulumi.Input<MicrovmIdlePolicy?>? idlePolicy;
  /// ARN of the MicroVM image to run. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> imageArn;
  /// Version of the MicroVM image to run. Defaults to the latest active version. Changing this value creates a new resource.
  final pulumi.Input<String?>? imageVersion;
  /// List of ingress network connector ARNs for inbound connectivity. Changing this value creates a new resource.
  final pulumi.Input<List<String>?>? ingressNetworkConnectors;
  /// Logging configuration for the MicroVM. See below. Changing this value creates a new resource.
  final pulumi.Input<MicrovmLogging?>? logging;
  /// Maximum duration in seconds that the MicroVM can exist before the platform terminates it. Valid range: `1`–`28800` (8 hours). Changing this value creates a new resource.
  final pulumi.Input<int?>? maximumDurationInSeconds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// String payload (maximum 16 KB) delivered to the `/run` lifecycle hook when the MicroVM starts. Changing this value creates a new resource.
  final pulumi.Input<String?>? runHookPayload;
  final pulumi.Input<MicrovmTimeouts?>? timeouts;

  /// Creates a new [MicrovmArgs].
  /// [egressNetworkConnectors] List of egress network connector ARNs for outbound connectivity. Changing this value creates a new resource.
  /// [executionRoleArn] ARN of the IAM role assumed by the MicroVM during execution. Changing this value creates a new resource.
  /// [idlePolicy] Configuration controlling automatic suspend and resume behavior. See below. Changing this value creates a new resource.
  /// [imageArn] ARN of the MicroVM image to run. Changing this value creates a new resource.
  /// [imageVersion] Version of the MicroVM image to run. Defaults to the latest active version. Changing this value creates a new resource.
  /// [ingressNetworkConnectors] List of ingress network connector ARNs for inbound connectivity. Changing this value creates a new resource.
  /// [logging] Logging configuration for the MicroVM. See below. Changing this value creates a new resource.
  /// [maximumDurationInSeconds] Maximum duration in seconds that the MicroVM can exist before the platform terminates it. Valid range: `1`–`28800` (8 hours). Changing this value creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runHookPayload] String payload (maximum 16 KB) delivered to the `/run` lifecycle hook when the MicroVM starts. Changing this value creates a new resource.
  /// [timeouts] Optional.
  const MicrovmArgs({
    this.egressNetworkConnectors,
    this.executionRoleArn,
    this.idlePolicy,
    required this.imageArn,
    this.imageVersion,
    this.ingressNetworkConnectors,
    this.logging,
    this.maximumDurationInSeconds,
    this.region,
    this.runHookPayload,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNetworkConnectors': ?egressNetworkConnectors,
      'executionRoleArn': ?executionRoleArn,
      'idlePolicy': ?pulumi.Input.mapOptionalInputValue<MicrovmIdlePolicy, Map<String, dynamic>>(idlePolicy, (value) => value.toMap()),
      'imageArn': imageArn,
      'imageVersion': ?imageVersion,
      'ingressNetworkConnectors': ?ingressNetworkConnectors,
      'logging': ?pulumi.Input.mapOptionalInputValue<MicrovmLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'maximumDurationInSeconds': ?maximumDurationInSeconds,
      'region': ?region,
      'runHookPayload': ?runHookPayload,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MicrovmTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory MicrovmArgs.fromMap(Map<String, dynamic> map) {
    return MicrovmArgs(
      egressNetworkConnectors: (() { final guardedValue = map['egressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idlePolicy: (() { final guardedValue = map['idlePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmIdlePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageArn: pulumi.Input.fromValue(map['imageArn'] as String),
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressNetworkConnectors: (() { final guardedValue = map['ingressNetworkConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maximumDurationInSeconds: (() { final guardedValue = map['maximumDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runHookPayload: (() { final guardedValue = map['runHookPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MicrovmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
