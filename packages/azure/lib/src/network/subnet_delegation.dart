// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_delegation_service_delegation.dart';

class SubnetDelegation {
  /// A name for this delegation.
  final String name;
  /// A `service_delegation` block as defined below.
  final SubnetDelegationServiceDelegation serviceDelegation;

  /// Creates a new [SubnetDelegation].
  /// [name] A name for this delegation.
  /// [serviceDelegation] A `service_delegation` block as defined below.
  SubnetDelegation({
    required this.name,
    required this.serviceDelegation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'serviceDelegation': serviceDelegation.toMap(),
    };
  }

  factory SubnetDelegation.fromMap(Map<String, dynamic> map) {
    return SubnetDelegation(
      name: map['name'] as String,
      serviceDelegation: SubnetDelegationServiceDelegation.fromMap((map['serviceDelegation'] as Map).cast<String, dynamic>()),
    );
  }
}

