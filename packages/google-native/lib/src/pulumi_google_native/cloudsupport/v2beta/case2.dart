import 'package:pulumi/pulumi.dart' hide Config;
import 'actor_response2.dart';
import 'case_args2.dart';
import 'case_classification_response2.dart';

/// Create a new case and associate it with a parent. It must have the following fields set: `display_name`, `description`, `classification`, and `priority`. If you're just testing the API and don't want to route your case to an agent, set `testCase=true`. EXAMPLES: cURL: ```shell parent="projects/some-project" curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header 'Content-Type: application/json' \ --data '{ "display_name": "Test case created by me.", "description": "a random test case, feel free to close", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, "time_zone": "-07:00", "subscriber_email_addresses": [ "foo@domain.com", "bar@domain.com" ], "testCase": true, "priority": "P3" }' \ "https://cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python import googleapiclient.discovery api_version = "v2" supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$discovery/rest?version={api_version}", ) request = supportApiService.cases().create( parent="projects/some-project", body={ "displayName": "A Test Case", "description": "This is a test case.", "testCase": True, "priority": "P2", "classification": { "id": "100IK2AKCLHMGRJ9CDGMOCGP8DM6UTB4BT262T31BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8" }, }, ) print(request.execute()) ```
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Case2 extends CustomResource {
  /// The issue classification applicable to this case.
  late final Output<CaseClassificationResponse2> classification;

  /// A user-supplied email address to send case update notifications for. This should only be used in BYOID flows, where we cannot infer the user's email address directly from their EUCs.
  late final Output<String> contactEmail;

  /// The time this case was created.
  late final Output<String> createTime;

  /// The user who created the case. Note: The name and email will be obfuscated if the case was created by Google Support.
  late final Output<ActorResponse2> creator;

  /// A broad description of the issue.
  late final Output<String> description;

  /// The short summary of the issue reported in this case.
  late final Output<String> displayName;

  /// Whether the case is currently escalated.
  late final Output<bool> escalated;

  /// The language the user has requested to receive support in. This should be a BCP 47 language code (e.g., `"en"`, `"zh-CN"`, `"zh-TW"`, `"ja"`, `"ko"`). If no language or an unsupported language is specified, this field defaults to English (en). Language selection during case creation may affect your available support options. For a list of supported languages and their support working hours, see: https://cloud.google.com/support/docs/language-working-hours
  late final Output<String> languageCode;

  /// The resource name for the case.
  late final Output<String> name;

  /// The priority of this case.
  late final Output<String> priority;

  /// REMOVED. The severity of this case. Use priority instead.
  late final Output<String> severity;

  /// The current status of the support case.
  late final Output<String> state;

  /// The email addresses to receive updates on this case.
  late final Output<List<String>> subscriberEmailAddresses;

  /// Whether this case was created for internal API testing and should not be acted on by the support team.
  late final Output<bool> testCase;

  /// The timezone of the user who created the support case. It should be in a format IANA recognizes: https://www.iana.org/time-zones. There is no additional validation done by the API.
  late final Output<String> timeZone;

  /// The time this case was last updated.
  late final Output<String> updateTime;
  late final Output<String> v2betaId1;
  late final Output<String> v2betumId;

  Case2(
    String name, {
    CaseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudsupport/v2beta:Case',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.classification =
        registerOutput<CaseClassificationResponse2>('classification');
    this.contactEmail = registerOutput<String>('contactEmail');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<ActorResponse2>('creator');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.escalated = registerOutput<bool>('escalated');
    this.languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<String>('priority');
    this.severity = registerOutput<String>('severity');
    this.state = registerOutput<String>('state');
    this.subscriberEmailAddresses =
        registerOutput<List<String>>('subscriberEmailAddresses');
    this.testCase = registerOutput<bool>('testCase');
    this.timeZone = registerOutput<String>('timeZone');
    this.updateTime = registerOutput<String>('updateTime');
    this.v2betaId1 = registerOutput<String>('v2betaId1');
    this.v2betumId = registerOutput<String>('v2betumId');
  }
}
