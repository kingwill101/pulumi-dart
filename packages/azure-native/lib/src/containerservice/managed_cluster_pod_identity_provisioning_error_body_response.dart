// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An error response from the pod identity provisioning.
class ManagedClusterPodIdentityProvisioningErrorBodyResponse {
  /// An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  final String? code;
  /// A list of additional details about the error.
  final List<ManagedClusterPodIdentityProvisioningErrorBodyResponse>? details;
  /// A message describing the error, intended to be suitable for display in a user interface.
  final String? message;
  /// The target of the particular error. For example, the name of the property in error.
  final String? target;

  /// Creates a new [ManagedClusterPodIdentityProvisioningErrorBodyResponse].
  /// [code] An identifier for the error. Codes are invariant and are intended to be consumed programmatically.
  /// [details] A list of additional details about the error.
  /// [message] A message describing the error, intended to be suitable for display in a user interface.
  /// [target] The target of the particular error. For example, the name of the property in error.
  ManagedClusterPodIdentityProvisioningErrorBodyResponse({
    this.code,
    this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details == null ? null : pulumi.Input.encodeList<ManagedClusterPodIdentityProvisioningErrorBodyResponse, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ManagedClusterPodIdentityProvisioningErrorBodyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityProvisioningErrorBodyResponse(
      code: map['code'] == null ? null : map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<ManagedClusterPodIdentityProvisioningErrorBodyResponse>(map['details'], (value) => ManagedClusterPodIdentityProvisioningErrorBodyResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

