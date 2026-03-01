// ignore_for_file: unused_element, unnecessary_cast

import 'awsoidcconfiguration.dart';
import 'azure_oidcconfiguration.dart';
import 'gcpoidcconfiguration.dart';

class OperationContextOIDC {
  /// AWS-specific OIDC configuration.
  final AWSOIDCConfiguration? aws;
  /// Azure-specific OIDC configuration.
  final AzureOIDCConfiguration? azure;
  /// GCP-specific OIDC configuration.
  final GCPOIDCConfiguration? gcp;

  /// Creates a new [OperationContextOIDC].
  /// [aws] AWS-specific OIDC configuration.
  /// [azure] Azure-specific OIDC configuration.
  /// [gcp] GCP-specific OIDC configuration.
  OperationContextOIDC({
    this.aws,
    this.azure,
    this.gcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?aws == null ? null : aws!.toMap(),
      'azure': ?azure == null ? null : azure!.toMap(),
      'gcp': ?gcp == null ? null : gcp!.toMap(),
    };
  }

  factory OperationContextOIDC.fromMap(Map<String, dynamic> map) {
    return OperationContextOIDC(
      aws: map['aws'] == null ? null : AWSOIDCConfiguration.fromMap((map['aws'] as Map).cast<String, dynamic>()),
      azure: map['azure'] == null ? null : AzureOIDCConfiguration.fromMap((map['azure'] as Map).cast<String, dynamic>()),
      gcp: map['gcp'] == null ? null : GCPOIDCConfiguration.fromMap((map['gcp'] as Map).cast<String, dynamic>()),
    );
  }
}

