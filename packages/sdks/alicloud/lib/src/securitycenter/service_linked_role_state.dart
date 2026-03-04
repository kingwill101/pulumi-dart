// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  final pulumi.Input<bool>? status;

  /// Creates a new [ServiceLinkedRoleState].
  /// [status] The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  ServiceLinkedRoleState({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory ServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleState(
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
