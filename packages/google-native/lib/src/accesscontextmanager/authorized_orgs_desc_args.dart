// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_orgs_desc_asset_type.dart';
import 'authorized_orgs_desc_authorization_direction.dart';
import 'authorized_orgs_desc_authorization_type.dart';

/// {@template pulumi_accesscontextmanager_v1_authorized_orgs_desc_args_doc}
/// The set of arguments for AuthorizedOrgsDesc.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_authorized_orgs_desc_args_doc}
class AuthorizedOrgsDescArgs {
  final pulumi.Input<String> accessPolicyId;

  /// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final pulumi.Input<AuthorizedOrgsDescAssetType>? assetType;

  /// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  final pulumi.Input<AuthorizedOrgsDescAuthorizationDirection>?
      authorizationDirection;

  /// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  final pulumi.Input<AuthorizedOrgsDescAuthorizationType>? authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final pulumi.Input<String>? name;

  /// The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  final pulumi.Input<List<String>>? orgs;

  /// Creates a new [AuthorizedOrgsDescArgs].
  /// [accessPolicyId] Required.
  /// [assetType] The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  /// [authorizationDirection] The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  /// [authorizationType] A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  /// [name] Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  /// [orgs] The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  AuthorizedOrgsDescArgs({
    required String accessPolicyId,
    AuthorizedOrgsDescAssetType? assetType,
    AuthorizedOrgsDescAuthorizationDirection? authorizationDirection,
    AuthorizedOrgsDescAuthorizationType? authorizationType,
    String? name,
    List<String>? orgs,
  })  : accessPolicyId = pulumi.Input.asInput<String>(accessPolicyId),
        assetType = pulumi.Input.asOptionalInput<AuthorizedOrgsDescAssetType>(
            assetType),
        authorizationDirection = pulumi.Input.asOptionalInput<
            AuthorizedOrgsDescAuthorizationDirection>(authorizationDirection),
        authorizationType =
            pulumi.Input.asOptionalInput<AuthorizedOrgsDescAuthorizationType>(
                authorizationType),
        name = pulumi.Input.asOptionalInput<String>(name),
        orgs = pulumi.Input.asOptionalInput<List<String>>(orgs);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final assetTypeValue = assetType;
    if (assetTypeValue != null) {
      map['assetType'] = pulumi.Input.mapOptionalInputValue<
          AuthorizedOrgsDescAssetType,
          String>(assetTypeValue, (value) => value.value);
    }
    final authorizationDirectionValue = authorizationDirection;
    if (authorizationDirectionValue != null) {
      map['authorizationDirection'] = pulumi.Input.mapOptionalInputValue<
          AuthorizedOrgsDescAuthorizationDirection,
          String>(authorizationDirectionValue, (value) => value.value);
    }
    final authorizationTypeValue = authorizationType;
    if (authorizationTypeValue != null) {
      map['authorizationType'] = pulumi.Input.mapOptionalInputValue<
          AuthorizedOrgsDescAuthorizationType,
          String>(authorizationTypeValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final orgsValue = orgs;
    if (orgsValue != null) {
      map['orgs'] = orgsValue;
    }
    return map;
  }

  factory AuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedOrgsDescArgs(
      accessPolicyId: map['accessPolicyId'] as String,
      assetType: map['assetType'] == null
          ? null
          : AuthorizedOrgsDescAssetType.fromValue(map['assetType'] as String),
      authorizationDirection: map['authorizationDirection'] == null
          ? null
          : AuthorizedOrgsDescAuthorizationDirection.fromValue(
              map['authorizationDirection'] as String),
      authorizationType: map['authorizationType'] == null
          ? null
          : AuthorizedOrgsDescAuthorizationType.fromValue(
              map['authorizationType'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      orgs: map['orgs'] == null ? null : (map['orgs'] as List).cast<String>(),
    );
  }
}
