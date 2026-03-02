// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a lab's announcement banner
class LabAnnouncementPropertiesResponse {
  /// Is the lab announcement active/enabled at this time?
  final pulumi.Input<String>? enabled;
  /// The time at which the announcement expires (null for never)
  final pulumi.Input<String>? expirationDate;
  /// Has this announcement expired?
  final pulumi.Input<bool>? expired;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final pulumi.Input<String>? markdown;
  /// The provisioning status of the resource.
  final pulumi.Input<String> provisioningState;
  /// The plain text title for the lab announcement
  final pulumi.Input<String>? title;
  /// The unique immutable identifier of a resource (Guid).
  final pulumi.Input<String> uniqueIdentifier;

  /// Creates a new [LabAnnouncementPropertiesResponse].
  /// [enabled] Is the lab announcement active/enabled at this time?
  /// [expirationDate] The time at which the announcement expires (null for never)
  /// [expired] Has this announcement expired?
  /// [markdown] The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  /// [provisioningState] The provisioning status of the resource.
  /// [title] The plain text title for the lab announcement
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  LabAnnouncementPropertiesResponse({
    this.enabled,
    this.expirationDate,
    this.expired,
    this.markdown,
    required this.provisioningState,
    this.title,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expirationDate': ?expirationDate,
      'expired': ?expired,
      'markdown': ?markdown,
      'provisioningState': provisioningState,
      'title': ?title,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory LabAnnouncementPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LabAnnouncementPropertiesResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      expired: map['expired'] == null ? null : (map['expired']! as bool).input(),
      markdown: map['markdown'] == null ? null : (map['markdown']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
      uniqueIdentifier: (map['uniqueIdentifier'] as String).input(),
    );
  }
}

