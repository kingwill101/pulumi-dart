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
  final String? beneficiary;
  /// Configuration for consumption of the license. Detailed below
  final List<GetReceivedLicenseConsumptionConfiguration>? consumptionConfigurations;
  /// Creation time of the granted license in RFC 3339 format.
  final String? createTime;
  /// License entitlements. Detailed below
  final List<GetReceivedLicenseEntitlement>? entitlements;
  /// Home Region of the granted license.
  final String? homeRegion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Granted license issuer. Detailed below
  final List<GetReceivedLicenseIssuer>? issuers;
  /// ARN of the license.
  final String? licenseArn;
  /// Granted license metadata. This is in the form of a set of all meta data. Detailed below
  final List<GetReceivedLicenseLicenseMetadata>? licenseMetadatas;
  /// License name.
  final String? licenseName;
  /// Product name.
  /// * `productSku ` - Product SKU.
  final String? productName;
  final String? productSku;
  /// Granted license received metadata. Detailed below
  final List<GetReceivedLicenseReceivedMetadata>? receivedMetadatas;
  final String? region;
  /// Granted license status.
  final String? status;
  /// Date and time range during which the granted license is valid, in ISO8601-UTC format. Detailed below
  final List<GetReceivedLicenseValidity>? validities;
  /// Version of the granted license.
  final String? version;

  /// Creates a new [GetReceivedLicenseResult].
  /// [beneficiary] Granted license beneficiary. This is in the form of the ARN of the root user of the account.
  /// [consumptionConfigurations] Configuration for consumption of the license. Detailed below
  /// [createTime] Creation time of the granted license in RFC 3339 format.
  /// [entitlements] License entitlements. Detailed below
  /// [homeRegion] Home Region of the granted license.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issuers] Granted license issuer. Detailed below
  /// [licenseArn] ARN of the license.
  /// [licenseMetadatas] Granted license metadata. This is in the form of a set of all meta data. Detailed below
  /// [licenseName] License name.
  /// [productName] Product name.
  /// [productSku] Optional.
  /// [receivedMetadatas] Granted license received metadata. Detailed below
  /// [region] Optional.
  /// [status] Granted license status.
  /// [validities] Date and time range during which the granted license is valid, in ISO8601-UTC format. Detailed below
  /// [version] Version of the granted license.
  const GetReceivedLicenseResult({
    this.beneficiary,
    this.consumptionConfigurations,
    this.createTime,
    this.entitlements,
    this.homeRegion,
    this.id,
    this.issuers,
    this.licenseArn,
    this.licenseMetadatas,
    this.licenseName,
    this.productName,
    this.productSku,
    this.receivedMetadatas,
    this.region,
    this.status,
    this.validities,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beneficiary': ?beneficiary,
      'consumptionConfigurations': ?(() { final guardedValue = consumptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseConsumptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'entitlements': ?(() { final guardedValue = entitlements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseEntitlement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'homeRegion': ?homeRegion,
      'id': ?id,
      'issuers': ?(() { final guardedValue = issuers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseIssuer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'licenseArn': ?licenseArn,
      'licenseMetadatas': ?(() { final guardedValue = licenseMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseLicenseMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'licenseName': ?licenseName,
      'productName': ?productName,
      'productSku': ?productSku,
      'receivedMetadatas': ?(() { final guardedValue = receivedMetadatas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseReceivedMetadata, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
      'validities': ?(() { final guardedValue = validities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReceivedLicenseValidity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
    };
  }

  factory GetReceivedLicenseResult.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseResult(
      beneficiary: (() { final guardedValue = map['beneficiary']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumptionConfigurations: (() { final guardedValue = map['consumptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseConsumptionConfiguration>(guardedValue, (value) => GetReceivedLicenseConsumptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entitlements: (() { final guardedValue = map['entitlements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseEntitlement>(guardedValue, (value) => GetReceivedLicenseEntitlement.fromMap((value as Map).cast<String, dynamic>())); })(),
      homeRegion: (() { final guardedValue = map['homeRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuers: (() { final guardedValue = map['issuers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseIssuer>(guardedValue, (value) => GetReceivedLicenseIssuer.fromMap((value as Map).cast<String, dynamic>())); })(),
      licenseArn: (() { final guardedValue = map['licenseArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseMetadatas: (() { final guardedValue = map['licenseMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseLicenseMetadata>(guardedValue, (value) => GetReceivedLicenseLicenseMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      licenseName: (() { final guardedValue = map['licenseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productName: (() { final guardedValue = map['productName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productSku: (() { final guardedValue = map['productSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      receivedMetadatas: (() { final guardedValue = map['receivedMetadatas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseReceivedMetadata>(guardedValue, (value) => GetReceivedLicenseReceivedMetadata.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validities: (() { final guardedValue = map['validities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReceivedLicenseValidity>(guardedValue, (value) => GetReceivedLicenseValidity.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
