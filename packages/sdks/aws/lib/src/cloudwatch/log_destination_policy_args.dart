// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_destination_policy_log_destination_policy_args_doc}
/// The set of arguments for LogDestinationPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_destination_policy_log_destination_policy_args_doc}
class LogDestinationPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> accessPolicy;
  /// A name for the subscription filter
  final pulumi.Input<String> destinationName;
  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  final pulumi.Input<bool>? forceUpdate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDestinationPolicyArgs].
  /// [accessPolicy] The policy document. This is a JSON formatted string.
  /// [destinationName] A name for the subscription filter
  /// [forceUpdate] Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LogDestinationPolicyArgs({
    required this.accessPolicy,
    required this.destinationName,
    this.forceUpdate,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': accessPolicy,
      'destinationName': destinationName,
      'forceUpdate': ?forceUpdate,
      'region': ?region,
    };
  }

  factory LogDestinationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDestinationPolicyArgs(
      accessPolicy: pulumi.Input.fromValue(map['accessPolicy'] as String),
      destinationName: pulumi.Input.fromValue(map['destinationName'] as String),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

