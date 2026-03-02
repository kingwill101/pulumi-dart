// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceLinkedRole resources.
class ServiceLinkedRoleState {
  /// The product name for SLR. Dbfs can automatically create the following service-linked roles: `AliyunServiceRoleForDbfs`.
  final pulumi.Input<String>? productName;
  /// The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  final pulumi.Input<bool>? status;

  /// Creates a new [ServiceLinkedRoleState].
  /// [productName] The product name for SLR. Dbfs can automatically create the following service-linked roles: `AliyunServiceRoleForDbfs`.
  /// [status] The status of the service Associated role. Valid Values: `true`: Created. `false`: not created.
  ServiceLinkedRoleState({
    this.productName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productName': ?productName,
      'status': ?status,
    };
  }

  factory ServiceLinkedRoleState.fromMap(Map<String, dynamic> map) {
    return ServiceLinkedRoleState(
      productName: map['productName'] == null ? null : (map['productName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as bool).input(),
    );
  }
}

