// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelIcebergDestinationSchemaEvolution {
  /// Whether to allow MSK to evolve the destination table's schema.
  final pulumi.Input<bool?>? enableSchemaEvolution;

  /// Creates a new [ChannelIcebergDestinationSchemaEvolution].
  /// [enableSchemaEvolution] Whether to allow MSK to evolve the destination table's schema.
  const ChannelIcebergDestinationSchemaEvolution({
    this.enableSchemaEvolution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSchemaEvolution': ?enableSchemaEvolution,
    };
  }

  factory ChannelIcebergDestinationSchemaEvolution.fromMap(Map<String, dynamic> map) {
    return ChannelIcebergDestinationSchemaEvolution(
      enableSchemaEvolution: (() { final guardedValue = map['enableSchemaEvolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
