// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConnectionConfirmation.
class ConnectionConfirmationArgs {
  /// The ID of the hosted connection.
  final Input<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ConnectionConfirmationArgs({
    required this.connectionId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ConnectionConfirmationArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionConfirmationArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
