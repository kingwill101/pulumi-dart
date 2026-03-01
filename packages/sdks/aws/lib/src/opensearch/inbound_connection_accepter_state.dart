// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InboundConnectionAccepter resources.
class InboundConnectionAccepterState {
  /// Specifies the ID of the connection to accept.
  final pulumi.Input<String>? connectionId;
  /// Status of the connection request.
  final pulumi.Input<String>? connectionStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InboundConnectionAccepterState].
  /// [connectionId] Specifies the ID of the connection to accept.
  /// [connectionStatus] Status of the connection request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InboundConnectionAccepterState({
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? connectionStatus,
    pulumi.Output<String>? region,
  }) :
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      connectionStatus = pulumi.Input.asOptionalInput<String>(connectionStatus),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'connectionStatus': ?connectionStatus,
      'region': ?region,
    };
  }

  factory InboundConnectionAccepterState.fromMap(Map<String, dynamic> map) {
    return InboundConnectionAccepterState(
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      connectionStatus: map['connectionStatus'] == null ? null : pulumi.Output.create<String>(map['connectionStatus'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

