// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_authorized_certificate_args_doc}
/// Arguments for getAuthorizedCertificate.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_authorized_certificate_args_doc}
class GetAuthorizedCertificateArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> authorizedCertificateId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetAuthorizedCertificateArgs].
  /// [appId] Required.
  /// [authorizedCertificateId] Required.
  /// [view] Optional.
  GetAuthorizedCertificateArgs({
    required String appId,
    required String authorizedCertificateId,
    String? view,
  }) : appId = pulumi.Input.asInput<String>(appId),
       authorizedCertificateId = pulumi.Input.asInput<String>(
         authorizedCertificateId,
       ),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'authorizedCertificateId': authorizedCertificateId,
      'view': ?view,
    };
  }

  factory GetAuthorizedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedCertificateArgs(
      appId: map['appId'] as String,
      authorizedCertificateId: map['authorizedCertificateId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
