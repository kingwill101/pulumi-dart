// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_address_properties_response.dart';

/// Site properties
class SitePropertiesSitesByServiceGroupResponse {
  /// Description of Site resource
  final pulumi.Input<String?>? description;
  /// displayName of Site resource
  final pulumi.Input<String?>? displayName;
  /// Key-value pairs for labeling the site resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Provisioning state of last operation
  final pulumi.Input<String> provisioningState;
  /// Physical address of the site
  final pulumi.Input<SiteAddressPropertiesResponse?>? siteAddress;

  /// Creates a new [SitePropertiesSitesByServiceGroupResponse].
  /// [description] Description of Site resource
  /// [displayName] displayName of Site resource
  /// [labels] Key-value pairs for labeling the site resource.
  /// [provisioningState] Provisioning state of last operation
  /// [siteAddress] Physical address of the site
  const SitePropertiesSitesByServiceGroupResponse({
    this.description,
    this.displayName,
    this.labels,
    required this.provisioningState,
    this.siteAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'provisioningState': provisioningState,
      'siteAddress': ?pulumi.Input.mapOptionalInputValue<SiteAddressPropertiesResponse, Map<String, dynamic>>(siteAddress, (value) => value.toMap()),
    };
  }

  factory SitePropertiesSitesByServiceGroupResponse.fromMap(Map<String, dynamic> map) {
    return SitePropertiesSitesByServiceGroupResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      siteAddress: (() { final guardedValue = map['siteAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SiteAddressPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
