// ignore_for_file: unused_element, unnecessary_cast

import 'site_address_properties.dart';

/// Site properties
class SiteProperties {
  /// AddressResource ArmId of Site resource
  final String? addressResourceId;
  /// Description of Site resource
  final String? description;
  /// displayName of Site resource
  final String? displayName;
  /// Key-value pairs for labeling the site resource.
  final Map<String, String>? labels;
  /// Physical address of the site
  final SiteAddressProperties? siteAddress;

  /// Creates a new [SiteProperties].
  /// [addressResourceId] AddressResource ArmId of Site resource
  /// [description] Description of Site resource
  /// [displayName] displayName of Site resource
  /// [labels] Key-value pairs for labeling the site resource.
  /// [siteAddress] Physical address of the site
  SiteProperties({
    this.addressResourceId,
    this.description,
    this.displayName,
    this.labels,
    this.siteAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressResourceId': ?addressResourceId,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'siteAddress': ?siteAddress == null ? null : siteAddress!.toMap(),
    };
  }

  factory SiteProperties.fromMap(Map<String, dynamic> map) {
    return SiteProperties(
      addressResourceId: map['addressResourceId'] == null ? null : map['addressResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      siteAddress: map['siteAddress'] == null ? null : SiteAddressProperties.fromMap((map['siteAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

