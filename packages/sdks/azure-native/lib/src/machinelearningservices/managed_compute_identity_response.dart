// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';

/// Managed compute identity definition.
class ManagedComputeIdentityResponse {
  /// Monitor compute identity type enum.
  /// Expected value is 'ManagedIdentity'.
  final String computeIdentityType;
  /// The identity which will be leveraged by the monitoring jobs.
  final ManagedServiceIdentityResponse? identity;

  /// Creates a new [ManagedComputeIdentityResponse].
  /// [computeIdentityType] Monitor compute identity type enum.
  /// [identity] The identity which will be leveraged by the monitoring jobs.
  ManagedComputeIdentityResponse({
    required this.computeIdentityType,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentityType': computeIdentityType,
      'identity': ?identity == null ? null : identity!.toMap(),
    };
  }

  factory ManagedComputeIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedComputeIdentityResponse(
      computeIdentityType: map['computeIdentityType'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
    );
  }
}

