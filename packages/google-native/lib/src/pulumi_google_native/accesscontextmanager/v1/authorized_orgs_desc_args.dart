// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_orgs_desc_asset_type.dart';
import 'authorized_orgs_desc_authorization_direction.dart';
import 'authorized_orgs_desc_authorization_type.dart';

/// The set of arguments for AuthorizedOrgsDesc.
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
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
      assetType: pulumi.Input.asOptionalInput<AuthorizedOrgsDescAssetType>(
          map['assetType']),
      authorizationDirection: pulumi.Input.asOptionalInput<
              AuthorizedOrgsDescAuthorizationDirection>(
          map['authorizationDirection']),
      authorizationType:
          pulumi.Input.asOptionalInput<AuthorizedOrgsDescAuthorizationType>(
              map['authorizationType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgs: pulumi.Input.asOptionalInput<List<String>>(map['orgs']),
    );
  }
}
