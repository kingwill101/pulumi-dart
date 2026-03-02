// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_reference.dart';

/// The role based access control (RBAC) authorization type integration runtime.
class LinkedIntegrationRuntimeRbacAuthorization {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'RBAC'.
  final pulumi.Input<String> authorizationType;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// The resource identifier of the integration runtime to be shared.
  final pulumi.Input<String> resourceId;

  /// Creates a new [LinkedIntegrationRuntimeRbacAuthorization].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [credential] The credential reference containing authentication information.
  /// [resourceId] The resource identifier of the integration runtime to be shared.
  LinkedIntegrationRuntimeRbacAuthorization({
    required this.authorizationType,
    this.credential,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'resourceId': resourceId,
    };
  }

  factory LinkedIntegrationRuntimeRbacAuthorization.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeRbacAuthorization(
      authorizationType: (map['authorizationType'] as String).input(),
      credential: map['credential'] == null ? null : (CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

