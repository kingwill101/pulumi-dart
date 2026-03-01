// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor.dart';
import 'case_classification.dart';
import 'case_priority.dart';

/// {@template pulumi_cloudsupport_v2_case_args_doc}
/// The set of arguments for Case.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_v2_case_args_doc}
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

  /// Creates a new [CaseArgs].
  /// [classification] The issue classification applicable to this case.
  /// [contactEmail] A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  /// [creator] The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  /// [description] A broad description of the issue.
  /// [displayName] The short summary of the issue reported in this case.
  /// [escalated] Whether the case is currently escalated.
  /// [languageCode] The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  /// [name] The resource name for the case.
  /// [priority] The priority of this case.
  /// [subscriberEmailAddresses] The email addresses to receive updates on this case.
  /// [testCase] Whether this case was created for internal API testing and should not be acted on by the support team.
  /// [timeZone] The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  /// [v2Id] Required.
  /// [v2Id1] Required.
  CaseArgs({
    CaseClassification? classification,
    String? contactEmail,
    Actor? creator,
    String? description,
    String? displayName,
    bool? escalated,
    String? languageCode,
    String? name,
    CasePriority? priority,
    List<String>? subscriberEmailAddresses,
    bool? testCase,
    String? timeZone,
    required String v2Id,
    required String v2Id1,
  }) : classification = pulumi.Input.asOptionalInput<CaseClassification>(
         classification,
       ),
       contactEmail = pulumi.Input.asOptionalInput<String>(contactEmail),
       creator = pulumi.Input.asOptionalInput<Actor>(creator),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       escalated = pulumi.Input.asOptionalInput<bool>(escalated),
       languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
       name = pulumi.Input.asOptionalInput<String>(name),
       priority = pulumi.Input.asOptionalInput<CasePriority>(priority),
       subscriberEmailAddresses = pulumi.Input.asOptionalInput<List<String>>(
         subscriberEmailAddresses,
       ),
       testCase = pulumi.Input.asOptionalInput<bool>(testCase),
       timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
       v2Id = pulumi.Input.asInput<String>(v2Id),
       v2Id1 = pulumi.Input.asInput<String>(v2Id1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classification':
          ?pulumi.Input.mapOptionalInputValue<
            CaseClassification,
            Map<String, dynamic>
          >(classification, (value) => value.toMap()),
      'contactEmail': ?contactEmail,
      'creator':
          ?pulumi.Input.mapOptionalInputValue<Actor, Map<String, dynamic>>(
            creator,
            (value) => value.toMap(),
          ),
      'description': ?description,
      'displayName': ?displayName,
      'escalated': ?escalated,
      'languageCode': ?languageCode,
      'name': ?name,
      'priority': ?pulumi.Input.mapOptionalInputValue<CasePriority, String>(
        priority,
        (value) => value.value,
      ),
      'subscriberEmailAddresses': ?subscriberEmailAddresses,
      'testCase': ?testCase,
      'timeZone': ?timeZone,
      'v2Id': v2Id,
      'v2Id1': v2Id1,
    };
  }

  factory CaseArgs.fromMap(Map<String, dynamic> map) {
    return CaseArgs(
      classification: map['classification'] == null
          ? null
          : CaseClassification.fromMap(
              (map['classification'] as Map).cast<String, dynamic>(),
            ),
      contactEmail: map['contactEmail'] == null
          ? null
          : map['contactEmail'] as String,
      creator: map['creator'] == null
          ? null
          : Actor.fromMap((map['creator'] as Map).cast<String, dynamic>()),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      escalated: map['escalated'] == null ? null : map['escalated'] as bool,
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null
          ? null
          : CasePriority.fromValue(map['priority'] as String),
      subscriberEmailAddresses: map['subscriberEmailAddresses'] == null
          ? null
          : (map['subscriberEmailAddresses'] as List).cast<String>(),
      testCase: map['testCase'] == null ? null : map['testCase'] as bool,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      v2Id: map['v2Id'] as String,
      v2Id1: map['v2Id1'] as String,
    );
  }
}
