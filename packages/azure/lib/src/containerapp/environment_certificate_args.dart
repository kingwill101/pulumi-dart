// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_certificate_certificate_key_vault.dart';

/// {@template pulumi_containerapp_environment_certificate_environment_certificate_args_doc}
/// The set of arguments for EnvironmentCertificate.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_certificate_environment_certificate_args_doc}
class EnvironmentCertificateArgs {
  /// The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of `certificate_blob_base64` and `certificate_key_vault` must be set.
  final pulumi.Input<String>? certificateBlobBase64;
  /// A `certificate_key_vault` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** one of `certificate_blob_base64` and `certificate_key_vault` must be set.
  final pulumi.Input<EnvironmentCertificateCertificateKeyVault>? certificateKeyVault;
  /// The password for the Certificate. Changing this forces a new resource to be created.
  ///
  /// > **Note:** required if `certificate_blob_base64` is specified.
  final pulumi.Input<String>? certificatePassword;
  /// The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentCertificateArgs].
  /// [certificateBlobBase64] The Certificate Private Key as a base64 encoded PFX or PEM. Changing this forces a new resource to be created.
  /// [certificateKeyVault] A `certificate_key_vault` block as defined below. Changing this forces a new resource to be created.
  /// [certificatePassword] The password for the Certificate. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentId] The Container App Managed Environment ID to configure this Certificate on. Changing this forces a new resource to be created.
  /// [name] The name of the Container Apps Environment Certificate. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  EnvironmentCertificateArgs({
    String? certificateBlobBase64,
    EnvironmentCertificateCertificateKeyVault? certificateKeyVault,
    String? certificatePassword,
    required String containerAppEnvironmentId,
    String? name,
    Map<String, String>? tags,
  }) :
      certificateBlobBase64 = pulumi.Input.asOptionalInput<String>(certificateBlobBase64),
      certificateKeyVault = pulumi.Input.asOptionalInput<EnvironmentCertificateCertificateKeyVault>(certificateKeyVault),
      certificatePassword = pulumi.Input.asOptionalInput<String>(certificatePassword),
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBlobBase64': ?certificateBlobBase64,
      'certificateKeyVault': ?pulumi.Input.mapOptionalInputValue<EnvironmentCertificateCertificateKeyVault, Map<String, dynamic>>(certificateKeyVault, (value) => value.toMap()),
      'certificatePassword': ?certificatePassword,
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory EnvironmentCertificateArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentCertificateArgs(
      certificateBlobBase64: map['certificateBlobBase64'] == null ? null : map['certificateBlobBase64'] as String,
      certificateKeyVault: map['certificateKeyVault'] == null ? null : EnvironmentCertificateCertificateKeyVault.fromMap((map['certificateKeyVault'] as Map).cast<String, dynamic>()),
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

