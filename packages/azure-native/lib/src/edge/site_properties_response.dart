// ignore_for_file: unused_element, unnecessary_cast

import 'site_address_properties_response.dart';

/// Site properties
class SitePropertiesResponse {
  /// AddressResource ArmId of Site resource
  final String? addressResourceId;
  /// Description of Site resource
  final String? description;
  /// displayName of Site resource
  final String? displayName;
  /// Key-value pairs for labeling the site resource.
  final Map<String, String>? labels;
  /// Provisioning state of last operation
  final String provisioningState;
  /// Physical address of the site
  final SiteAddressPropertiesResponse? siteAddress;

  /// Creates a new [SitePropertiesResponse].
  /// [addressResourceId] AddressResource ArmId of Site resource
  /// [description] Description of Site resource
  /// [displayName] displayName of Site resource
  /// [labels] Key-value pairs for labeling the site resource.
  /// [provisioningState] Provisioning state of last operation
  /// [siteAddress] Physical address of the site
  SitePropertiesResponse({
    this.addressResourceId,
    this.description,
    this.displayName,
    this.labels,
    required this.provisioningState,
    this.siteAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressResourceId': ?addressResourceId,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'provisioningState': provisioningState,
      'siteAddress': ?siteAddress == null ? null : siteAddress!.toMap(),
    };
  }

  factory SitePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesResponse(
      addressResourceId: map['addressResourceId'] == null ? null : map['addressResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      siteAddress: map['siteAddress'] == null ? null : SiteAddressPropertiesResponse.fromMap((map['siteAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

