// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectionConfirmation resources.
class ConnectionConfirmationState {
  /// The ID of the hosted connection.
  final pulumi.Input<String>? connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ConnectionConfirmationState].
  /// [connectionId] The ID of the hosted connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ConnectionConfirmationState({
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? region,
  }) :
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'region': ?region,
    };
  }

  factory ConnectionConfirmationState.fromMap(Map<String, dynamic> map) {
    return ConnectionConfirmationState(
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

