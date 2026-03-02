// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_address_properties_response.dart';

/// Site properties
class SitePropertiesResponse {
  /// AddressResource ArmId of Site resource
  final pulumi.Input<String>? addressResourceId;
  /// Description of Site resource
  final pulumi.Input<String>? description;
  /// displayName of Site resource
  final pulumi.Input<String>? displayName;
  /// Key-value pairs for labeling the site resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Provisioning state of last operation
  final pulumi.Input<String> provisioningState;
  /// Physical address of the site
  final pulumi.Input<SiteAddressPropertiesResponse>? siteAddress;

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
      'siteAddress': ?pulumi.Input.mapOptionalInputValue<SiteAddressPropertiesResponse, Map<String, dynamic>>(siteAddress, (value) => value.toMap()),
    };
  }

  factory SitePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesResponse(
      addressResourceId: map['addressResourceId'] == null ? null : (map['addressResourceId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      siteAddress: map['siteAddress'] == null ? null : (SiteAddressPropertiesResponse.fromMap((map['siteAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

