// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_certificate_binding_certificate_binding_args_doc}
/// The set of arguments for CertificateBinding.
/// {@endtemplate}
/// {@macro pulumi_appservice_certificate_binding_certificate_binding_args_doc}
class CertificateBindingArgs {
  /// The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String> certificateId;
  /// The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String> hostnameBindingId;
  /// The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created.
  final pulumi.Input<String> sslState;

  /// Creates a new [CertificateBindingArgs].
  /// [certificateId] The ID of the certificate to bind to the custom domain. Changing this forces a new App Service Certificate Binding to be created.
  /// [hostnameBindingId] The ID of the Custom Domain/Hostname Binding. Changing this forces a new App Service Certificate Binding to be created.
  /// [sslState] The type of certificate binding. Allowed values are `IpBasedEnabled` or `SniEnabled`. Changing this forces a new App Service Certificate Binding to be created.
  CertificateBindingArgs({
    required String certificateId,
    required String hostnameBindingId,
    required String sslState,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      hostnameBindingId = pulumi.Input.asInput<String>(hostnameBindingId),
      sslState = pulumi.Input.asInput<String>(sslState);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'hostnameBindingId': hostnameBindingId,
      'sslState': sslState,
    };
  }

  factory CertificateBindingArgs.fromMap(Map<String, dynamic> map) {
    return CertificateBindingArgs(
      certificateId: map['certificateId'] as String,
      hostnameBindingId: map['hostnameBindingId'] as String,
      sslState: map['sslState'] as String,
    );
  }
}

