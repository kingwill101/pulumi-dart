// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'authorized_orgs_desc_asset_type.dart';
import 'authorized_orgs_desc_authorization_direction.dart';
import 'authorized_orgs_desc_authorization_type.dart';

/// The set of arguments for AuthorizedOrgsDesc.
class AuthorizedOrgsDescArgs {
  final Input<String> accessPolicyId;

  /// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final Input<AuthorizedOrgsDescAssetType>? assetType;

  /// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  final Input<AuthorizedOrgsDescAuthorizationDirection>? authorizationDirection;

  /// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  final Input<AuthorizedOrgsDescAuthorizationType>? authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final Input<String>? name;

  /// The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  final Input<List<String>>? orgs;

  AuthorizedOrgsDescArgs({
    required this.accessPolicyId,
    this.assetType,
    this.authorizationDirection,
    this.authorizationType,
    this.name,
    this.orgs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    final assetTypeValue = assetType;
    if (assetTypeValue != null) {
      map['assetType'] =
          Input.mapOptionalInputValue<AuthorizedOrgsDescAssetType, String>(
              assetTypeValue, (value) => value.value);
    }
    final authorizationDirectionValue = authorizationDirection;
    if (authorizationDirectionValue != null) {
      map['authorizationDirection'] = Input.mapOptionalInputValue<
          AuthorizedOrgsDescAuthorizationDirection,
          String>(authorizationDirectionValue, (value) => value.value);
    }
    final authorizationTypeValue = authorizationType;
    if (authorizationTypeValue != null) {
      map['authorizationType'] = Input.mapOptionalInputValue<
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
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      assetType:
          Input.asOptionalInput<AuthorizedOrgsDescAssetType>(map['assetType']),
      authorizationDirection:
          Input.asOptionalInput<AuthorizedOrgsDescAuthorizationDirection>(
              map['authorizationDirection']),
      authorizationType:
          Input.asOptionalInput<AuthorizedOrgsDescAuthorizationType>(
              map['authorizationType']),
      name: Input.asOptionalInput<String>(map['name']),
      orgs: Input.asOptionalInput<List<String>>(map['orgs']),
    );
  }
}
