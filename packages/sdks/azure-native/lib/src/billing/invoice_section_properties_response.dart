// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An invoice section.
class InvoiceSectionPropertiesResponse {
  /// The name of the invoice section.
  final pulumi.Input<String>? displayName;
  /// The provisioning state of the resource during a long-running operation.
  final pulumi.Input<String> provisioningState;
  /// Reason for the specified invoice section status.
  final pulumi.Input<String>? reasonCode;
  /// Identifies the status of an invoice section.
  final pulumi.Input<String>? state;
  /// The system generated unique identifier for an invoice section.
  final pulumi.Input<String> systemId;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  final pulumi.Input<String>? targetCloud;

  /// Creates a new [InvoiceSectionPropertiesResponse].
  /// [displayName] The name of the invoice section.
  /// [provisioningState] The provisioning state of the resource during a long-running operation.
  /// [reasonCode] Reason for the specified invoice section status.
  /// [state] Identifies the status of an invoice section.
  /// [systemId] The system generated unique identifier for an invoice section.
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  /// [targetCloud] Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  InvoiceSectionPropertiesResponse({
    this.displayName,
    required this.provisioningState,
    this.reasonCode,
    this.state,
    required this.systemId,
    this.tags,
    this.targetCloud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'provisioningState': provisioningState,
      'reasonCode': ?reasonCode,
      'state': ?state,
      'systemId': systemId,
      'tags': ?tags,
      'targetCloud': ?targetCloud,
    };
  }

  factory InvoiceSectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InvoiceSectionPropertiesResponse(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reasonCode: map['reasonCode'] == null ? null : (map['reasonCode'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      systemId: (map['systemId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetCloud: map['targetCloud'] == null ? null : (map['targetCloud'] as String).input(),
    );
  }
}

