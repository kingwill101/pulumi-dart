// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Result data returned by getDeveloper.
class GetDeveloperResult {
  /// Access type.
  final String accessType;

  /// Developer app family.
  final String appFamily;

  /// List of apps associated with the developer.
  final List<String> apps;

  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  final List<GoogleCloudApigeeV1AttributeResponse> attributes;

  /// List of companies associated with the developer.
  final List<String> companies;

  /// Time at which the developer was created in milliseconds since epoch.
  final String createdAt;

  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  final String developerId;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  final String email;

  /// First name of the developer.
  final String firstName;

  /// Time at which the developer was last modified in milliseconds since epoch.
  final String lastModifiedAt;

  /// Last name of the developer.
  final String lastName;

  /// Name of the Apigee organization in which the developer resides.
  final String organizationName;

  /// Status of the developer. Valid values are `active` and `inactive`.
  final String status;

  /// User name of the developer. Not used by Apigee hybrid.
  final String userName;

  GetDeveloperResult({
    required this.accessType,
    required this.appFamily,
    required this.apps,
    required this.attributes,
    required this.companies,
    required this.createdAt,
    required this.developerId,
    required this.email,
    required this.firstName,
    required this.lastModifiedAt,
    required this.lastName,
    required this.organizationName,
    required this.status,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessType'] = accessType;
    map['appFamily'] = appFamily;
    map['apps'] = apps;
    map['attributes'] = Input.encodeList<GoogleCloudApigeeV1AttributeResponse,
        Map<String, dynamic>>(attributes, (value) => value.toMap());
    map['companies'] = companies;
    map['createdAt'] = createdAt;
    map['developerId'] = developerId;
    map['email'] = email;
    map['firstName'] = firstName;
    map['lastModifiedAt'] = lastModifiedAt;
    map['lastName'] = lastName;
    map['organizationName'] = organizationName;
    map['status'] = status;
    map['userName'] = userName;
    return map;
  }

  factory GetDeveloperResult.fromMap(Map<String, dynamic> map) {
    return GetDeveloperResult(
      accessType: map['accessType'] as String,
      appFamily: map['appFamily'] as String,
      apps: (map['apps'] as List).cast<String>(),
      attributes: Input.decodeList<GoogleCloudApigeeV1AttributeResponse>(
          map['attributes'],
          (value) => GoogleCloudApigeeV1AttributeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      companies: (map['companies'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      developerId: map['developerId'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastModifiedAt: map['lastModifiedAt'] as String,
      lastName: map['lastName'] as String,
      organizationName: map['organizationName'] as String,
      status: map['status'] as String,
      userName: map['userName'] as String,
    );
  }
}
