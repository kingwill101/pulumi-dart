// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_certificate.dart';
import 'certificate_product_type.dart';

/// {@template pulumi_certificateregistration_app_service_certificate_order_args_doc}
/// The set of arguments for AppServiceCertificateOrder.
/// {@endtemplate}
/// {@macro pulumi_certificateregistration_app_service_certificate_order_args_doc}
class AppServiceCertificateOrderArgs {
  /// <code>true</code> if the certificate should be automatically renewed when it expires; otherwise, <code>false</code>.
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
  /// [autoRenew] <code>true</code> if the certificate should be automatically renewed when it expires; otherwise, <code>false</code>.
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
    bool? autoRenew,
    String? certificateOrderName,
    Map<String, AppServiceCertificate>? certificates,
    String? csr,
    String? distinguishedName,
    int? keySize,
    String? kind,
    String? location,
    required CertificateProductType productType,
    required String resourceGroupName,
    Map<String, String>? tags,
    int? validityInYears,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      certificateOrderName = pulumi.Input.asOptionalInput<String>(certificateOrderName),
      certificates = pulumi.Input.asOptionalInput<Map<String, AppServiceCertificate>>(certificates),
      csr = pulumi.Input.asOptionalInput<String>(csr),
      distinguishedName = pulumi.Input.asOptionalInput<String>(distinguishedName),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      productType = pulumi.Input.asInput<CertificateProductType>(productType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      validityInYears = pulumi.Input.asOptionalInput<int>(validityInYears);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'certificateOrderName': ?certificateOrderName,
      'certificates': ?pulumi.Input.mapOptionalInputValue<Map<String, AppServiceCertificate>, Map<String, Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeMapValues<AppServiceCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'csr': ?csr,
      'distinguishedName': ?distinguishedName,
      'keySize': ?keySize,
      'kind': ?kind,
      'location': ?location,
      'productType': pulumi.Input.mapInputValue<CertificateProductType, String>(productType, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'validityInYears': ?validityInYears,
    };
  }

  factory AppServiceCertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceCertificateOrderArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      certificateOrderName: map['certificateOrderName'] == null ? null : map['certificateOrderName'] as String,
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeMapValues<AppServiceCertificate>(map['certificates'], (value) => AppServiceCertificate.fromMap((value as Map).cast<String, dynamic>())),
      csr: map['csr'] == null ? null : map['csr'] as String,
      distinguishedName: map['distinguishedName'] == null ? null : map['distinguishedName'] as String,
      keySize: map['keySize'] == null ? null : map['keySize'] as int,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      productType: CertificateProductType.fromValue(map['productType'] as String),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      validityInYears: map['validityInYears'] == null ? null : map['validityInYears'] as int,
    );
  }
}

