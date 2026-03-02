// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_address_properties.dart';

/// Site properties
class SiteProperties {
  /// AddressResource ArmId of Site resource
  final pulumi.Input<String>? addressResourceId;
  /// Description of Site resource
  final pulumi.Input<String>? description;
  /// displayName of Site resource
  final pulumi.Input<String>? displayName;
  /// Key-value pairs for labeling the site resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Physical address of the site
  final pulumi.Input<SiteAddressProperties>? siteAddress;

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
      'siteAddress': ?pulumi.Input.mapOptionalInputValue<SiteAddressProperties, Map<String, dynamic>>(siteAddress, (value) => value.toMap()),
    };
  }

  factory SiteProperties.fromMap(Map<String, dynamic> map) {
    return SiteProperties(
      addressResourceId: map['addressResourceId'] == null ? null : (map['addressResourceId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      siteAddress: map['siteAddress'] == null ? null : (SiteAddressProperties.fromMap((map['siteAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

