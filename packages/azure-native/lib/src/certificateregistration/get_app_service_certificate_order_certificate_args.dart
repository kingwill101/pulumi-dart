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
    required String certificateOrderName,
    required String name,
    required String resourceGroupName,
  }) :
      certificateOrderName = pulumi.Input.asInput<String>(certificateOrderName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateOrderName': certificateOrderName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceCertificateOrderCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceCertificateOrderCertificateArgs(
      certificateOrderName: map['certificateOrderName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

