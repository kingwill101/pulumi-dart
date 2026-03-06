// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';

/// Managed compute identity definition.
class ManagedComputeIdentityResponse {
  /// Monitor compute identity type enum.
  /// Expected value is 'ManagedIdentity'.
  final pulumi.Input<String> computeIdentityType;
  /// The identity which will be leveraged by the monitoring jobs.
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;

  /// Creates a new [ManagedComputeIdentityResponse].
  /// [computeIdentityType] Monitor compute identity type enum.
  /// [identity] The identity which will be leveraged by the monitoring jobs.
  const ManagedComputeIdentityResponse({
    required this.computeIdentityType,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentityType': computeIdentityType,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory ManagedComputeIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedComputeIdentityResponse(
      computeIdentityType: pulumi.Input.fromValue(map['computeIdentityType'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

