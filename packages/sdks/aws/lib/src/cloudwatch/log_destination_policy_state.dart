// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogDestinationPolicy resources.
class LogDestinationPolicyState {
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String>? accessPolicy;
  /// A name for the subscription filter
  final pulumi.Input<String>? destinationName;
  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  final pulumi.Input<bool>? forceUpdate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogDestinationPolicyState].
  /// [accessPolicy] The policy document. This is a JSON formatted string.
  /// [destinationName] A name for the subscription filter
  /// [forceUpdate] Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogDestinationPolicyState({
    this.accessPolicy,
    this.destinationName,
    this.forceUpdate,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy,
      'destinationName': ?destinationName,
      'forceUpdate': ?forceUpdate,
      'region': ?region,
    };
  }

  factory LogDestinationPolicyState.fromMap(Map<String, dynamic> map) {
    return LogDestinationPolicyState(
      accessPolicy: (() { final guardedValue = map['accessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationName: (() { final guardedValue = map['destinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceUpdate: (() { final guardedValue = map['forceUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

