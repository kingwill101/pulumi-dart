// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityControlsSecurityControlDefinition {
  /// Whether the security control is available in the current AWS Region. Valid values: `AVAILABLE`, `UNAVAILABLE`.
  final pulumi.Input<String> currentRegionAvailability;
  /// Security control properties that you can customize.
  final pulumi.Input<List<String>> customizableProperties;
  /// Description of the security control across standards.
  final pulumi.Input<String> description;
  /// Link to Security Hub CSPM documentation that explains how to remediate a failed finding for the security control.
  final pulumi.Input<String> remediationUrl;
  /// Unique identifier of the security control across standards.
  final pulumi.Input<String> securityControlId;
  /// Severity of the security control. Valid values: `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String> severityRating;
  /// Title of the security control.
  final pulumi.Input<String> title;

  /// Creates a new [GetSecurityControlsSecurityControlDefinition].
  /// [currentRegionAvailability] Whether the security control is available in the current AWS Region. Valid values: `AVAILABLE`, `UNAVAILABLE`.
  /// [customizableProperties] Security control properties that you can customize.
  /// [description] Description of the security control across standards.
  /// [remediationUrl] Link to Security Hub CSPM documentation that explains how to remediate a failed finding for the security control.
  /// [securityControlId] Unique identifier of the security control across standards.
  /// [severityRating] Severity of the security control. Valid values: `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  /// [title] Title of the security control.
  const GetSecurityControlsSecurityControlDefinition({
    required this.currentRegionAvailability,
    required this.customizableProperties,
    required this.description,
    required this.remediationUrl,
    required this.securityControlId,
    required this.severityRating,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentRegionAvailability': currentRegionAvailability,
      'customizableProperties': customizableProperties,
      'description': description,
      'remediationUrl': remediationUrl,
      'securityControlId': securityControlId,
      'severityRating': severityRating,
      'title': title,
    };
  }

  factory GetSecurityControlsSecurityControlDefinition.fromMap(Map<String, dynamic> map) {
    return GetSecurityControlsSecurityControlDefinition(
      currentRegionAvailability: pulumi.Input.fromValue(map['currentRegionAvailability'] as String),
      customizableProperties: pulumi.Input.fromValue((map['customizableProperties'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      remediationUrl: pulumi.Input.fromValue(map['remediationUrl'] as String),
      securityControlId: pulumi.Input.fromValue(map['securityControlId'] as String),
      severityRating: pulumi.Input.fromValue(map['severityRating'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
