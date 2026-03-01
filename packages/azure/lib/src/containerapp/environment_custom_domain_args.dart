// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_environment_custom_domain_environment_custom_domain_args_doc}
/// The set of arguments for EnvironmentCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_custom_domain_environment_custom_domain_args_doc}
class EnvironmentCustomDomainArgs {
  /// The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  final pulumi.Input<String> certificateBlobBase64;
  /// The password for the Certificate bundle.
  final pulumi.Input<String> certificatePassword;
  /// The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// Custom DNS Suffix for the Container App Environment.
  final pulumi.Input<String> dnsSuffix;

  /// Creates a new [EnvironmentCustomDomainArgs].
  /// [certificateBlobBase64] The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  /// [certificatePassword] The password for the Certificate bundle.
  /// [containerAppEnvironmentId] The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  /// [dnsSuffix] Custom DNS Suffix for the Container App Environment.
  EnvironmentCustomDomainArgs({
    required String certificateBlobBase64,
    required String certificatePassword,
    required String containerAppEnvironmentId,
    required String dnsSuffix,
  }) :
      certificateBlobBase64 = pulumi.Input.asInput<String>(certificateBlobBase64),
      certificatePassword = pulumi.Input.asInput<String>(certificatePassword),
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      dnsSuffix = pulumi.Input.asInput<String>(dnsSuffix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBlobBase64': certificateBlobBase64,
      'certificatePassword': certificatePassword,
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'dnsSuffix': dnsSuffix,
    };
  }

  factory EnvironmentCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentCustomDomainArgs(
      certificateBlobBase64: map['certificateBlobBase64'] as String,
      certificatePassword: map['certificatePassword'] as String,
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      dnsSuffix: map['dnsSuffix'] as String,
    );
  }
}

