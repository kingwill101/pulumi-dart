// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service principal for uploading billing, metrics and logs.
class UploadServicePrincipalResponse {
  /// Authority for the service principal. Example: https://login.microsoftonline.com/
  final pulumi.Input<String>? authority;
  /// Client ID of the service principal for uploading data.
  final pulumi.Input<String>? clientId;
  /// Tenant ID of the service principal.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [UploadServicePrincipalResponse].
  /// [authority] Authority for the service principal. Example: https://login.microsoftonline.com/
  /// [clientId] Client ID of the service principal for uploading data.
  /// [tenantId] Tenant ID of the service principal.
  const UploadServicePrincipalResponse({
    this.authority,
    this.clientId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'clientId': ?clientId,
      'tenantId': ?tenantId,
    };
  }

  factory UploadServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return UploadServicePrincipalResponse(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
