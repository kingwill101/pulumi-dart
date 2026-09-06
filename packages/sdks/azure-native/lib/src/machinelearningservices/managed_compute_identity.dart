// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// Managed compute identity definition.
class ManagedComputeIdentity {
  /// Monitor compute identity type enum.
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> computeIdentityType;
  /// The identity which will be leveraged by the monitoring jobs.
  final pulumi.Input<ManagedServiceIdentity?>? identity;

  /// Creates a new [ManagedComputeIdentity].
  /// [computeIdentityType] Monitor compute identity type enum.
  /// [identity] The identity which will be leveraged by the monitoring jobs.
  const ManagedComputeIdentity({
    required this.computeIdentityType,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentityType': computeIdentityType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory ManagedComputeIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedComputeIdentity(
      computeIdentityType: pulumi.Input.fromValue(map['computeIdentityType'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
