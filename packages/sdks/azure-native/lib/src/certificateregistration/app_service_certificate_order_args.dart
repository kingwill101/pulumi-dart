// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_certificate.dart';
import 'certificate_product_type.dart';

/// {@template pulumi_certificateregistration_app_service_certificate_order_args_doc}
/// The set of arguments for AppServiceCertificateOrder.
/// {@endtemplate}
/// {@macro pulumi_certificateregistration_app_service_certificate_order_args_doc}
class AppServiceCertificateOrderArgs {
  /// &lt;code&gt;true&lt;/code&gt; if the certificate should be automatically renewed when it expires; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? autoRenew;

  /// Name of the certificate order.
  final pulumi.Input<String>? certificateOrderName;

  /// State of the Key Vault secret.
  final pulumi.Input<Map<String, AppServiceCertificate>>? certificates;

  /// Last CSR that was created for this order.
  final pulumi.Input<String>? csr;

  /// Certificate distinguished name.
  final pulumi.Input<String>? distinguishedName;

  /// Certificate key size.
  final pulumi.Input<int>? keySize;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;

  /// Resource Location.
  final pulumi.Input<String>? location;

  /// Certificate product type.
  final pulumi.Input<CertificateProductType> productType;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Duration in years (must be 1).
  final pulumi.Input<int>? validityInYears;

  /// Creates a new [AppServiceCertificateOrderArgs].
  /// [autoRenew] &lt;code&gt;true&lt;/code&gt; if the certificate should be automatically renewed when it expires; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [certificateOrderName] Name of the certificate order.
  /// [certificates] State of the Key Vault secret.
  /// [csr] Last CSR that was created for this order.
  /// [distinguishedName] Certificate distinguished name.
  /// [keySize] Certificate key size.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [productType] Certificate product type.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tags] Resource tags.
  /// [validityInYears] Duration in years (must be 1).
  AppServiceCertificateOrderArgs({
    this.autoRenew,
    this.certificateOrderName,
    this.certificates,
    this.csr,
    this.distinguishedName,
    this.keySize,
    this.kind,
    this.location,
    required this.productType,
    required this.resourceGroupName,
    this.tags,
    this.validityInYears,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'certificateOrderName': ?certificateOrderName,
      'certificates':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, AppServiceCertificate>,
            Map<String, Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeMapValues<
                  AppServiceCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'keySize': ?keySize,
      'kind': ?kind,
      'location': ?location,
      'productType': pulumi.Input.mapInputValue<CertificateProductType, String>(
        productType,
        (value) => value.wireValue,
      ),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'validityInYears': ?validityInYears,
    };
  }

  factory AppServiceCertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceCertificateOrderArgs(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      certificateOrderName: (() {
        final guardedValue = map['certificateOrderName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificates: (() {
        final guardedValue = map['certificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<AppServiceCertificate>(
            guardedValue,
            (value) => AppServiceCertificate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      csr: (() {
        final guardedValue = map['csr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      distinguishedName: (() {
        final guardedValue = map['distinguishedName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keySize: (() {
        final guardedValue = map['keySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productType: pulumi.Input.fromValue(
        CertificateProductType.fromValue(map['productType']! as String),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      validityInYears: (() {
        final guardedValue = map['validityInYears'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
