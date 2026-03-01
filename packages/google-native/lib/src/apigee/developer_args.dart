// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_developer_args_doc}
/// The set of arguments for Developer.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_developer_args_doc}
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

  /// Creates a new [DeveloperArgs].
  /// [accessType] Access type.
  /// [appFamily] Developer app family.
  /// [apps] List of apps associated with the developer.
  /// [attributes] Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [companies] List of companies associated with the developer.
  /// [developerId] ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  /// [email] Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  /// [firstName] First name of the developer.
  /// [lastName] Last name of the developer.
  /// [organizationId] Required.
  /// [userName] User name of the developer. Not used by Apigee hybrid.
  DeveloperArgs({
    String? accessType,
    String? appFamily,
    List<String>? apps,
    List<GoogleCloudApigeeV1Attribute>? attributes,
    List<String>? companies,
    String? developerId,
    required String email,
    required String firstName,
    required String lastName,
    required String organizationId,
    required String userName,
  }) : accessType = pulumi.Input.asOptionalInput<String>(accessType),
       appFamily = pulumi.Input.asOptionalInput<String>(appFamily),
       apps = pulumi.Input.asOptionalInput<List<String>>(apps),
       attributes =
           pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
             attributes,
           ),
       companies = pulumi.Input.asOptionalInput<List<String>>(companies),
       developerId = pulumi.Input.asOptionalInput<String>(developerId),
       email = pulumi.Input.asInput<String>(email),
       firstName = pulumi.Input.asInput<String>(firstName),
       lastName = pulumi.Input.asInput<String>(lastName),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'appFamily': ?appFamily,
      'apps': ?apps,
      'attributes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudApigeeV1Attribute>,
            List<Map<String, dynamic>>
          >(
            attributes,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1Attribute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'companies': ?companies,
      'developerId': ?developerId,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'organizationId': organizationId,
      'userName': userName,
    };
  }

  factory DeveloperArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperArgs(
      accessType: map['accessType'] == null
          ? null
          : map['accessType'] as String,
      appFamily: map['appFamily'] == null ? null : map['appFamily'] as String,
      apps: map['apps'] == null ? null : (map['apps'] as List).cast<String>(),
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
              map['attributes'],
              (value) => GoogleCloudApigeeV1Attribute.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      companies: map['companies'] == null
          ? null
          : (map['companies'] as List).cast<String>(),
      developerId: map['developerId'] == null
          ? null
          : map['developerId'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      organizationId: map['organizationId'] as String,
      userName: map['userName'] as String,
    );
  }
}
