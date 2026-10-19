// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelIcebergDestinationTableCreation {
  /// Whether MSK creates the destination table on the customer's behalf.
  final pulumi.Input<bool?>? enableTableCreation;

  /// Creates a new [ChannelIcebergDestinationTableCreation].
  /// [enableTableCreation] Whether MSK creates the destination table on the customer's behalf.
  const ChannelIcebergDestinationTableCreation({
    this.enableTableCreation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTableCreation': ?enableTableCreation,
    };
  }

  factory ChannelIcebergDestinationTableCreation.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationTableCreation(
      enableTableCreation: (() { final guardedValue = map['enableTableCreation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
