// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Protected settings for the extension, referenced using KeyVault which are encrypted before sent to the role instance.
class CloudServiceVaultAndSecretReference {
  /// Secret URL which contains the protected settings of the extension
  final pulumi.Input<String>? secretUrl;
  /// The ARM Resource ID of the Key Vault
  final pulumi.Input<SubResource>? sourceVault;

  /// Creates a new [CloudServiceVaultAndSecretReference].
  /// [secretUrl] Secret URL which contains the protected settings of the extension
  /// [sourceVault] The ARM Resource ID of the Key Vault
  CloudServiceVaultAndSecretReference({
    this.secretUrl,
    this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': ?secretUrl,
      'sourceVault': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory CloudServiceVaultAndSecretReference.fromMap(Map<String, dynamic> map) {
    return CloudServiceVaultAndSecretReference(
      secretUrl: (() { final guardedValue = map['secretUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVault: (() { final guardedValue = map['sourceVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

