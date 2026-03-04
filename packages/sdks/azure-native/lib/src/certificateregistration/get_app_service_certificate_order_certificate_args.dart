// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateregistration_get_app_service_certificate_order_certificate_args_doc}
/// Arguments for getAppServiceCertificateOrderCertificate.
/// {@endtemplate}
/// {@macro pulumi_certificateregistration_get_app_service_certificate_order_certificate_args_doc}
class GetAppServiceCertificateOrderCertificateArgs {
  /// Name of the certificate order.
  final pulumi.Input<String> certificateOrderName;

  /// Name of the certificate.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceCertificateOrderCertificateArgs].
  /// [certificateOrderName] Name of the certificate order.
  /// [name] Name of the certificate.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetAppServiceCertificateOrderCertificateArgs({
    required this.certificateOrderName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateOrderName': certificateOrderName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceCertificateOrderCertificateArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppServiceCertificateOrderCertificateArgs(
      certificateOrderName: pulumi.Input.fromValue(
        map['certificateOrderName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
