// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceService resources.
class ServiceServiceState {
  /// The status of the Service.
  final pulumi.Input<String>? status;

  /// Creates a new [ServiceServiceState].
  /// [status] The status of the Service.
  const ServiceServiceState({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ServiceServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceServiceState(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

