// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificateregistration_get_app_service_certificate_order_args_doc}
/// Arguments for getAppServiceCertificateOrder.
/// {@endtemplate}
/// {@macro pulumi_certificateregistration_get_app_service_certificate_order_args_doc}
class GetAppServiceCertificateOrderArgs {
  /// Name of the certificate order..
  final pulumi.Input<String> certificateOrderName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServiceCertificateOrderArgs].
  /// [certificateOrderName] Name of the certificate order..
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const GetAppServiceCertificateOrderArgs({
    required this.certificateOrderName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateOrderName': certificateOrderName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceCertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceCertificateOrderArgs(
      certificateOrderName: pulumi.Input.fromValue(map['certificateOrderName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
