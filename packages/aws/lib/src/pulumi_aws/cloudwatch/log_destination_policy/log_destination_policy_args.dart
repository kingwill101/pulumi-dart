// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogDestinationPolicy.
class LogDestinationPolicyArgs {
  /// The policy document. This is a JSON formatted string.
  final Input<String> accessPolicy;

  /// A name for the subscription filter
  final Input<String> destinationName;

  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  final Input<bool>? forceUpdate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LogDestinationPolicyArgs({
    required this.accessPolicy,
    required this.destinationName,
    this.forceUpdate,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicy'] = accessPolicy;
    map['destinationName'] = destinationName;
    final forceUpdateValue = forceUpdate;
    if (forceUpdateValue != null) {
      map['forceUpdate'] = forceUpdateValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogDestinationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return LogDestinationPolicyArgs(
      accessPolicy: Input.asInput<String>(map['accessPolicy']),
      destinationName: Input.asInput<String>(map['destinationName']),
      forceUpdate: Input.asOptionalInput<bool>(map['forceUpdate']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
