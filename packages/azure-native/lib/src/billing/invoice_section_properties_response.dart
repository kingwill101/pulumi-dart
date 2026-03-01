// ignore_for_file: unused_element, unnecessary_cast


/// An invoice section.
class InvoiceSectionPropertiesResponse {
  /// The name of the invoice section.
  final String? displayName;
  /// The provisioning state of the resource during a long-running operation.
  final String provisioningState;
  /// Reason for the specified invoice section status.
  final String? reasonCode;
  /// Identifies the status of an invoice section.
  final String? state;
  /// The system generated unique identifier for an invoice section.
  final String systemId;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final Map<String, String>? tags;
  /// Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  final String? targetCloud;

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
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      provisioningState: map['provisioningState'] as String,
      reasonCode: map['reasonCode'] == null ? null : map['reasonCode'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      systemId: map['systemId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetCloud: map['targetCloud'] == null ? null : map['targetCloud'] as String,
    );
  }
}

