// ignore_for_file: unused_element, unnecessary_cast


/// An invoice section.
class InvoiceSectionProperties {
  /// The name of the invoice section.
  final String? displayName;
  /// Reason for the specified invoice section status.
  final String? reasonCode;
  /// Identifies the status of an invoice section.
  final String? state;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final Map<String, String>? tags;
  /// Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  final String? targetCloud;

  /// Creates a new [InvoiceSectionProperties].
  /// [displayName] The name of the invoice section.
  /// [reasonCode] Reason for the specified invoice section status.
  /// [state] Identifies the status of an invoice section.
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  /// [targetCloud] Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  InvoiceSectionProperties({
    this.displayName,
    this.reasonCode,
    this.state,
    this.tags,
    this.targetCloud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'reasonCode': ?reasonCode,
      'state': ?state,
      'tags': ?tags,
      'targetCloud': ?targetCloud,
    };
  }

  factory InvoiceSectionProperties.fromMap(Map<String, dynamic> map) {
    return InvoiceSectionProperties(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      reasonCode: map['reasonCode'] == null ? null : map['reasonCode'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetCloud: map['targetCloud'] == null ? null : map['targetCloud'] as String,
    );
  }
}

