// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InboundConnectionAccepter.
class InboundConnectionAccepterArgs {
  /// Specifies the ID of the connection to accept.
  final Input<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InboundConnectionAccepterArgs({
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

  factory InboundConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InboundConnectionAccepterArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
