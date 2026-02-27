// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// The set of arguments for Developer.
class DeveloperArgs {
  /// Access type.
  final pulumi.Input<String>? accessType;

  /// Developer app family.
  final pulumi.Input<String>? appFamily;

  /// List of apps associated with the developer.
  final pulumi.Input<List<String>>? apps;

  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// List of companies associated with the developer.
  final pulumi.Input<List<String>>? companies;

  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  final pulumi.Input<String>? developerId;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  final pulumi.Input<String> email;

  /// First name of the developer.
  final pulumi.Input<String> firstName;

  /// Last name of the developer.
  final pulumi.Input<String> lastName;
  final pulumi.Input<String> organizationId;

  /// User name of the developer. Not used by Apigee hybrid.
  final pulumi.Input<String> userName;

  DeveloperArgs({
    this.accessType,
    this.appFamily,
    this.apps,
    this.attributes,
    this.companies,
    this.developerId,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.organizationId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTypeValue = accessType;
    if (accessTypeValue != null) {
      map['accessType'] = accessTypeValue;
    }
    final appFamilyValue = appFamily;
    if (appFamilyValue != null) {
      map['appFamily'] = appFamilyValue;
    }
    final appsValue = apps;
    if (appsValue != null) {
      map['apps'] = appsValue;
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final companiesValue = companies;
    if (companiesValue != null) {
      map['companies'] = companiesValue;
    }
    final developerIdValue = developerId;
    if (developerIdValue != null) {
      map['developerId'] = developerIdValue;
    }
    map['email'] = email;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['organizationId'] = organizationId;
    map['userName'] = userName;
    return map;
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      accessType: pulumi.Input.asOptionalInput<String>(map['accessType']),
      appFamily: pulumi.Input.asOptionalInput<String>(map['appFamily']),
      apps: pulumi.Input.asOptionalInput<List<String>>(map['apps']),
      attributes:
          pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
              map['attributes']),
      companies: pulumi.Input.asOptionalInput<List<String>>(map['companies']),
      developerId: pulumi.Input.asOptionalInput<String>(map['developerId']),
      email: pulumi.Input.asInput<String>(map['email']),
      firstName: pulumi.Input.asInput<String>(map['firstName']),
      lastName: pulumi.Input.asInput<String>(map['lastName']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
