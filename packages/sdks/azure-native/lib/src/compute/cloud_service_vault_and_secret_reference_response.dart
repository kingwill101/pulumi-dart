// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Protected settings for the extension, referenced using KeyVault which are encrypted before sent to the role instance.
class CloudServiceVaultAndSecretReferenceResponse {
  /// Secret URL which contains the protected settings of the extension
  final pulumi.Input<String>? secretUrl;
  /// The ARM Resource ID of the Key Vault
  final pulumi.Input<SubResourceResponse>? sourceVault;

  /// Creates a new [CloudServiceVaultAndSecretReferenceResponse].
  /// [secretUrl] Secret URL which contains the protected settings of the extension
  /// [sourceVault] The ARM Resource ID of the Key Vault
  CloudServiceVaultAndSecretReferenceResponse({
    this.secretUrl,
    this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': ?secretUrl,
      'sourceVault': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory CloudServiceVaultAndSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultAndSecretReferenceResponse(
      secretUrl: map['secretUrl'] == null ? null : (map['secretUrl']! as String).input(),
      sourceVault: map['sourceVault'] == null ? null : (SubResourceResponse.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

