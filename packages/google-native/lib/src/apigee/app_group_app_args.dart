// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_attribute.dart';

/// {@template pulumi_apigee_v1_app_group_app_args_doc}
/// The set of arguments for AppGroupApp.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_app_group_app_args_doc}
class AppGroupAppArgs {
  /// List of API products associated with the AppGroup app.
  final pulumi.Input<List<String>>? apiProducts;

  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  final pulumi.Input<String>? appGroup;

  /// Immutable. ID of the AppGroup app.
  final pulumi.Input<String>? appId;
  final pulumi.Input<String> appgroupId;

  /// List of attributes for the AppGroup app.
  final pulumi.Input<List<GoogleCloudApigeeV1Attribute>>? attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  final pulumi.Input<String>? callbackUrl;

  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;

  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  final pulumi.Input<List<String>>? scopes;

  /// Status of the App. Valid values include `approved` or `revoked`.
  final pulumi.Input<String>? status;

  /// Creates a new [AppGroupAppArgs].
  /// [apiProducts] List of API products associated with the AppGroup app.
  /// [appGroup] Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  /// [appId] Immutable. ID of the AppGroup app.
  /// [appgroupId] Required.
  /// [attributes] List of attributes for the AppGroup app.
  /// [callbackUrl] Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  /// [keyExpiresIn] Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  /// [name] Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  /// [organizationId] Required.
  /// [scopes] Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  /// [status] Status of the App. Valid values include `approved` or `revoked`.
  AppGroupAppArgs({
    List<String>? apiProducts,
    String? appGroup,
    String? appId,
    required String appgroupId,
    List<GoogleCloudApigeeV1Attribute>? attributes,
    String? callbackUrl,
    String? keyExpiresIn,
    String? name,
    required String organizationId,
    List<String>? scopes,
    String? status,
  })  : apiProducts = pulumi.Input.asOptionalInput<List<String>>(apiProducts),
        appGroup = pulumi.Input.asOptionalInput<String>(appGroup),
        appId = pulumi.Input.asOptionalInput<String>(appId),
        appgroupId = pulumi.Input.asInput<String>(appgroupId),
        attributes =
            pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1Attribute>>(
                attributes),
        callbackUrl = pulumi.Input.asOptionalInput<String>(callbackUrl),
        keyExpiresIn = pulumi.Input.asOptionalInput<String>(keyExpiresIn),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
        status = pulumi.Input.asOptionalInput<String>(status);

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
      apiProducts: map['apiProducts'] == null
          ? null
          : (map['apiProducts'] as List).cast<String>(),
      appGroup: map['appGroup'] == null ? null : map['appGroup'] as String,
      appId: map['appId'] == null ? null : map['appId'] as String,
      appgroupId: map['appgroupId'] as String,
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1Attribute>(
              map['attributes'],
              (value) => GoogleCloudApigeeV1Attribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      callbackUrl:
          map['callbackUrl'] == null ? null : map['callbackUrl'] as String,
      keyExpiresIn:
          map['keyExpiresIn'] == null ? null : map['keyExpiresIn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
