// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_attribute.dart';

/// The set of arguments for AppGroupApp.
class AppGroupAppArgs {
  /// List of API products associated with the AppGroup app.
  final Input<List<String>>? apiProducts;

  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  final Input<String>? appGroup;

  /// Immutable. ID of the AppGroup app.
  final Input<String>? appId;
  final Input<String> appgroupId;

  /// List of attributes for the AppGroup app.
  final Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  final Input<String>? callbackUrl;

  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final Input<String>? keyExpiresIn;

  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  final Input<String>? name;
  final Input<String> organizationId;

  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  final Input<List<String>>? scopes;

  /// Status of the App. Valid values include `approved` or `revoked`.
  final Input<String>? status;

  AppGroupAppArgs({
    this.apiProducts,
    this.appGroup,
    this.appId,
    required this.appgroupId,
    this.attributes,
    this.callbackUrl,
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
    final appGroupValue = appGroup;
    if (appGroupValue != null) {
      map['appGroup'] = appGroupValue;
    }
    final appIdValue = appId;
    if (appIdValue != null) {
      map['appId'] = appIdValue;
    }
    map['appgroupId'] = appgroupId;
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1Attribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => Input.encodeList<GoogleCloudApigeeV1Attribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final callbackUrlValue = callbackUrl;
    if (callbackUrlValue != null) {
      map['callbackUrl'] = callbackUrlValue;
    }
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

  factory AppGroupAppArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupAppArgs(
      apiProducts: Input.asOptionalInput<List<String>>(map['apiProducts']),
      appGroup: Input.asOptionalInput<String>(map['appGroup']),
      appId: Input.asOptionalInput<String>(map['appId']),
      appgroupId: Input.asInput<String>(map['appgroupId']),
      attributes: Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
          map['attributes']),
      callbackUrl: Input.asOptionalInput<String>(map['callbackUrl']),
      keyExpiresIn: Input.asOptionalInput<String>(map['keyExpiresIn']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      scopes: Input.asOptionalInput<List<String>>(map['scopes']),
      status: Input.asOptionalInput<String>(map['status']),
    );
  }
}
