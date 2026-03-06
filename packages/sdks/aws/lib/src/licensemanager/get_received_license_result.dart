// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_received_license_consumption_configuration.dart';
import 'get_received_license_entitlement.dart';
import 'get_received_license_issuer.dart';
import 'get_received_license_license_metadata.dart';
import 'get_received_license_received_metadata.dart';
import 'get_received_license_validity.dart';

/// Result data returned by getReceivedLicense.
class GetReceivedLicenseResult {
  /// Granted license beneficiary. This is in the form of the ARN of the root user of the account.
  final String beneficiary;
  /// Configuration for consumption of the license. Detailed below
  final List<GetReceivedLicenseConsumptionConfiguration> consumptionConfigurations;
  /// Creation time of the granted license in RFC 3339 format.
  final String createTime;
  /// License entitlements. Detailed below
  final List<GetReceivedLicenseEntitlement> entitlements;
  /// Home Region of the granted license.
  final String homeRegion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Granted license issuer. Detailed below
  final List<GetReceivedLicenseIssuer> issuers;
  /// Amazon Resource Name (ARN) of the license.
  final String licenseArn;
  /// Granted license metadata. This is in the form of a set of all meta data. Detailed below
  final List<GetReceivedLicenseLicenseMetadata> licenseMetadatas;
  /// License name.
  final String licenseName;
  /// Product name.
  /// * `product_sku ` - Product SKU.
  final String productName;
  final String productSku;
  /// Granted license received metadata. Detailed below
  final List<GetReceivedLicenseReceivedMetadata> receivedMetadatas;
  final String region;
  /// Granted license status.
  final String status;
  /// Date and time range during which the granted license is valid, in ISO8601-UTC format. Detailed below
  final List<GetReceivedLicenseValidity> validities;
  /// Version of the granted license.
  final String version;

  /// Creates a new [GetReceivedLicenseResult].
  /// [beneficiary] Granted license beneficiary. This is in the form of the ARN of the root user of the account.
  /// [consumptionConfigurations] Configuration for consumption of the license. Detailed below
  /// [createTime] Creation time of the granted license in RFC 3339 format.
  /// [entitlements] License entitlements. Detailed below
  /// [homeRegion] Home Region of the granted license.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issuers] Granted license issuer. Detailed below
  /// [licenseArn] Amazon Resource Name (ARN) of the license.
  /// [licenseMetadatas] Granted license metadata. This is in the form of a set of all meta data. Detailed below
  /// [licenseName] License name.
  /// [productName] Product name.
  /// [productSku] Required.
  /// [receivedMetadatas] Granted license received metadata. Detailed below
  /// [region] Required.
  /// [status] Granted license status.
  /// [validities] Date and time range during which the granted license is valid, in ISO8601-UTC format. Detailed below
  /// [version] Version of the granted license.
  const GetReceivedLicenseResult({
    required this.beneficiary,
    required this.consumptionConfigurations,
    required this.createTime,
    required this.entitlements,
    required this.homeRegion,
    required this.id,
    required this.issuers,
    required this.licenseArn,
    required this.licenseMetadatas,
    required this.licenseName,
    required this.productName,
    required this.productSku,
    required this.receivedMetadatas,
    required this.region,
    required this.status,
    required this.validities,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beneficiary': beneficiary,
      'consumptionConfigurations': pulumi.Input.encodeList<GetReceivedLicenseConsumptionConfiguration, Map<String, dynamic>>(consumptionConfigurations, (value) => value.toMap()),
      'createTime': createTime,
      'entitlements': pulumi.Input.encodeList<GetReceivedLicenseEntitlement, Map<String, dynamic>>(entitlements, (value) => value.toMap()),
      'homeRegion': homeRegion,
      'id': id,
      'issuers': pulumi.Input.encodeList<GetReceivedLicenseIssuer, Map<String, dynamic>>(issuers, (value) => value.toMap()),
      'licenseArn': licenseArn,
      'licenseMetadatas': pulumi.Input.encodeList<GetReceivedLicenseLicenseMetadata, Map<String, dynamic>>(licenseMetadatas, (value) => value.toMap()),
      'licenseName': licenseName,
      'productName': productName,
      'productSku': productSku,
      'receivedMetadatas': pulumi.Input.encodeList<GetReceivedLicenseReceivedMetadata, Map<String, dynamic>>(receivedMetadatas, (value) => value.toMap()),
      'region': region,
      'status': status,
      'validities': pulumi.Input.encodeList<GetReceivedLicenseValidity, Map<String, dynamic>>(validities, (value) => value.toMap()),
      'version': version,
    };
  }

  factory GetReceivedLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseResult(
      beneficiary: map['beneficiary'] as String,
      consumptionConfigurations: pulumi.Input.decodeList<GetReceivedLicenseConsumptionConfiguration>(map['consumptionConfigurations']!, (value) => GetReceivedLicenseConsumptionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      entitlements: pulumi.Input.decodeList<GetReceivedLicenseEntitlement>(map['entitlements']!, (value) => GetReceivedLicenseEntitlement.fromMap((value as Map).cast<String, dynamic>())),
      homeRegion: map['homeRegion'] as String,
      id: map['id'] as String,
      issuers: pulumi.Input.decodeList<GetReceivedLicenseIssuer>(map['issuers']!, (value) => GetReceivedLicenseIssuer.fromMap((value as Map).cast<String, dynamic>())),
      licenseArn: map['licenseArn'] as String,
      licenseMetadatas: pulumi.Input.decodeList<GetReceivedLicenseLicenseMetadata>(map['licenseMetadatas']!, (value) => GetReceivedLicenseLicenseMetadata.fromMap((value as Map).cast<String, dynamic>())),
      licenseName: map['licenseName'] as String,
      productName: map['productName'] as String,
      productSku: map['productSku'] as String,
      receivedMetadatas: pulumi.Input.decodeList<GetReceivedLicenseReceivedMetadata>(map['receivedMetadatas']!, (value) => GetReceivedLicenseReceivedMetadata.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      status: map['status'] as String,
      validities: pulumi.Input.decodeList<GetReceivedLicenseValidity>(map['validities']!, (value) => GetReceivedLicenseValidity.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
    );
  }
}

