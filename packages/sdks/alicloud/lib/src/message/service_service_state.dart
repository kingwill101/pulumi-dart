// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceService resources.
class ServiceServiceState {
  /// The status of the Service.
  final pulumi.Input<String>? status;

  /// Creates a new [ServiceServiceState].
  /// [status] The status of the Service.
  ServiceServiceState({
    pulumi.Output<String>? status,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ServiceServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceServiceState(
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

