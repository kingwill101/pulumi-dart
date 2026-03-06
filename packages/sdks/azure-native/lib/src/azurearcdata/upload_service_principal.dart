// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service principal for uploading billing, metrics and logs.
class UploadServicePrincipal {
  /// Authority for the service principal. Example: https://login.microsoftonline.com/
  final pulumi.Input<String>? authority;
  /// Client ID of the service principal for uploading data.
  final pulumi.Input<String>? clientId;
  /// Secret of the service principal
  final pulumi.Input<String>? clientSecret;
  /// Tenant ID of the service principal.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [UploadServicePrincipal].
  /// [authority] Authority for the service principal. Example: https://login.microsoftonline.com/
  /// [clientId] Client ID of the service principal for uploading data.
  /// [clientSecret] Secret of the service principal
  /// [tenantId] Tenant ID of the service principal.
  const UploadServicePrincipal({
    this.authority,
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tenantId': ?tenantId,
    };
  }

  factory UploadServicePrincipal.fromMap(Map<String, dynamic> map) {
    return UploadServicePrincipal(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

