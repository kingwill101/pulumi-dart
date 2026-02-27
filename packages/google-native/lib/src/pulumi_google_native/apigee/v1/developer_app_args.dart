// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// The set of arguments for DeveloperApp.
class DeveloperAppArgs {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;

  /// Developer app family.
  final pulumi.Input<String>? appFamily;

  /// ID of the developer app.
  final pulumi.Input<String>? appId;

  /// List of attributes for the developer app.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  final pulumi.Input<String>? callbackUrl;

  /// ID of the developer.
  final pulumi.Input<String> developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;

  /// Name of the developer app.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  final pulumi.Input<String>? status;

  DeveloperAppArgs({
    this.apiProducts,
    this.appFamily,
    this.appId,
    this.attributes,
    this.callbackUrl,
    required this.developerId,
    this.keyExpiresIn,
    this.name,
    required this.organizationId,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiProductsValue = apiProducts;
    if (apiProductsValue != null) {
      map['apiProducts'] = apiProductsValue;
    }
    final appFamilyValue = appFamily;
    if (appFamilyValue != null) {
      map['appFamily'] = appFamilyValue;
    }
    final appIdValue = appId;
    if (appIdValue != null) {
      map['appId'] = appIdValue;
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Attribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final callbackUrlValue = callbackUrl;
    if (callbackUrlValue != null) {
      map['callbackUrl'] = callbackUrlValue;
    }
    map['developerId'] = developerId;
    final keyExpiresInValue = keyExpiresIn;
    if (keyExpiresInValue != null) {
      map['keyExpiresIn'] = keyExpiresInValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = scopesValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DeveloperAppArgs.fromMap(Map<String, dynamic> map) {
    return DeveloperAppArgs(
      apiProducts:
          pulumi.Input.asOptionalInput<List<String>>(map['apiProducts']),
      appFamily: pulumi.Input.asOptionalInput<String>(map['appFamily']),
      appId: pulumi.Input.asOptionalInput<String>(map['appId']),
      attributes:
          pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
              map['attributes']),
      callbackUrl: pulumi.Input.asOptionalInput<String>(map['callbackUrl']),
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      keyExpiresIn: pulumi.Input.asOptionalInput<String>(map['keyExpiresIn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      scopes: pulumi.Input.asOptionalInput<List<String>>(map['scopes']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
