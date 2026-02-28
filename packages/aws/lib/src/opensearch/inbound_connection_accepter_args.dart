// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_inbound_connection_accepter_inbound_connection_accepter_args_doc}
/// The set of arguments for InboundConnectionAccepter.
/// {@endtemplate}
/// {@macro pulumi_opensearch_inbound_connection_accepter_inbound_connection_accepter_args_doc}
class InboundConnectionAccepterArgs {
  /// Specifies the ID of the connection to accept.
  final pulumi.Input<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InboundConnectionAccepterArgs].
  /// [connectionId] Specifies the ID of the connection to accept.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InboundConnectionAccepterArgs({
    required String connectionId,
    String? region,
  })  : connectionId = pulumi.Input.asInput<String>(connectionId),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      connectionId: map['connectionId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
