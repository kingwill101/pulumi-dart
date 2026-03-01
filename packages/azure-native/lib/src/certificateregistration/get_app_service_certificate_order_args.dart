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
  GetAppServiceCertificateOrderArgs({
    required String certificateOrderName,
    required String resourceGroupName,
  }) :
      certificateOrderName = pulumi.Input.asInput<String>(certificateOrderName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateOrderName': certificateOrderName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppServiceCertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServiceCertificateOrderArgs(
      certificateOrderName: map['certificateOrderName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

