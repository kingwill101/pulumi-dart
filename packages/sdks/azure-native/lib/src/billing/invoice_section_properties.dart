// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An invoice section.
class InvoiceSectionProperties {
  /// The name of the invoice section.
  final pulumi.Input<String>? displayName;
  /// Reason for the specified invoice section status.
  final pulumi.Input<String>? reasonCode;
  /// Identifies the status of an invoice section.
  final pulumi.Input<String>? state;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  final pulumi.Input<String>? targetCloud;

  /// Creates a new [InvoiceSectionProperties].
  /// [displayName] The name of the invoice section.
  /// [reasonCode] Reason for the specified invoice section status.
  /// [state] Identifies the status of an invoice section.
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  /// [targetCloud] Identifies the cloud environments that are associated with an invoice section. This is a system managed optional field and gets updated as the invoice section gets associated with accounts in various clouds.
  const InvoiceSectionProperties({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasonCode: (() { final guardedValue = map['reasonCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetCloud: (() { final guardedValue = map['targetCloud']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

