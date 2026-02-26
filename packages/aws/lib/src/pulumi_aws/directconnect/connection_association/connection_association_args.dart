// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConnectionAssociation.
class ConnectionAssociationArgs {
  /// The ID of the connection.
  final Input<String> connectionId;

  /// The ID of the LAG with which to associate the connection.
  final Input<String> lagId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ConnectionAssociationArgs({
    required this.connectionId,
    required this.lagId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['lagId'] = lagId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ConnectionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionAssociationArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      lagId: Input.asInput<String>(map['lagId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
