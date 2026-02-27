// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor.dart';
import 'case_classification.dart';
import 'case_priority.dart';

/// The set of arguments for Case.
class CaseArgs {
  /// The issue classification applicable to this case.
  final pulumi.Input<CaseClassification>? classification;

  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  final pulumi.Input<String>? contactEmail;

  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  final pulumi.Input<Actor>? creator;

  /// A broad description of the issue.
  final pulumi.Input<String>? description;

  /// The short summary of the issue reported in this case.
  final pulumi.Input<String>? displayName;

  /// Whether the case is currently escalated.
  final pulumi.Input<bool>? escalated;

  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  final pulumi.Input<String>? languageCode;

  /// The resource name for the case.
  final pulumi.Input<String>? name;

  /// The priority of this case.
  final pulumi.Input<CasePriority>? priority;

  /// The email addresses to receive updates on this case.
  final pulumi.Input<List<String>>? subscriberEmailAddresses;

  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  final pulumi.Input<bool>? testCase;

  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  final pulumi.Input<String>? timeZone;
  final pulumi.Input<String> v2Id;
  final pulumi.Input<String> v2Id1;

  CaseArgs({
    this.classification,
    this.contactEmail,
    this.creator,
    this.description,
    this.displayName,
    this.escalated,
    this.languageCode,
    this.name,
    this.priority,
    this.subscriberEmailAddresses,
    this.testCase,
    this.timeZone,
    required this.v2Id,
    required this.v2Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classificationValue = classification;
    if (classificationValue != null) {
      map['classification'] = pulumi.Input.mapOptionalInputValue<
          CaseClassification,
          Map<String, dynamic>>(classificationValue, (value) => value.toMap());
    }
    final contactEmailValue = contactEmail;
    if (contactEmailValue != null) {
      map['contactEmail'] = contactEmailValue;
    }
    final creatorValue = creator;
    if (creatorValue != null) {
      map['creator'] =
          pulumi.Input.mapOptionalInputValue<Actor, Map<String, dynamic>>(
              creatorValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final escalatedValue = escalated;
    if (escalatedValue != null) {
      map['escalated'] = escalatedValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] =
          pulumi.Input.mapOptionalInputValue<CasePriority, String>(
              priorityValue, (value) => value.value);
    }
    final subscriberEmailAddressesValue = subscriberEmailAddresses;
    if (subscriberEmailAddressesValue != null) {
      map['subscriberEmailAddresses'] = subscriberEmailAddressesValue;
    }
    final testCaseValue = testCase;
    if (testCaseValue != null) {
      map['testCase'] = testCaseValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    map['v2Id'] = v2Id;
    map['v2Id1'] = v2Id1;
    return map;
  }

  factory CaseArgs.fromMap(Map<String, dynamic> map) {
    return CaseArgs(
      classification: pulumi.Input.asOptionalInput<CaseClassification>(
          map['classification']),
      contactEmail: pulumi.Input.asOptionalInput<String>(map['contactEmail']),
      creator: pulumi.Input.asOptionalInput<Actor>(map['creator']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      escalated: pulumi.Input.asOptionalInput<bool>(map['escalated']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      priority: pulumi.Input.asOptionalInput<CasePriority>(map['priority']),
      subscriberEmailAddresses: pulumi.Input.asOptionalInput<List<String>>(
          map['subscriberEmailAddresses']),
      testCase: pulumi.Input.asOptionalInput<bool>(map['testCase']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      v2Id: pulumi.Input.asInput<String>(map['v2Id']),
      v2Id1: pulumi.Input.asInput<String>(map['v2Id1']),
    );
  }
}
