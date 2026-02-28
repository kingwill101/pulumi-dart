// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAuthorizedOrgsDesc.
class GetAuthorizedOrgsDescResult {
  /// The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final String assetType;

  /// The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  final String authorizationDirection;

  /// A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  final String authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final String name;

  /// The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  final List<String> orgs;

  /// Creates a new [GetAuthorizedOrgsDescResult].
  /// [assetType] The asset type of this authorized orgs desc. Valid values are `ASSET_TYPE_DEVICE`, and `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  /// [authorizationDirection] The direction of the authorization relationship between this organization and the organizations listed in the `orgs` field. The valid values for this field include the following: `AUTHORIZATION_DIRECTION_FROM`: Allows this organization to evaluate traffic in the organizations listed in the `orgs` field. `AUTHORIZATION_DIRECTION_TO`: Allows the organizations listed in the `orgs` field to evaluate the traffic in this organization. For the authorization relationship to take effect, all of the organizations must authorize and specify the appropriate relationship direction. For example, if organization A authorized organization B and C to evaluate its traffic, by specifying `AUTHORIZATION_DIRECTION_TO` as the authorization direction, organizations B and C must specify `AUTHORIZATION_DIRECTION_FROM` as the authorization direction in their `AuthorizedOrgsDesc` resource.
  /// [authorizationType] A granular control type for authorization levels. Valid value is `AUTHORIZATION_TYPE_TRUST`.
  /// [name] Resource name for the `AuthorizedOrgsDesc`. Format: `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`. The `authorized_orgs_desc` component must begin with a letter, followed by alphanumeric characters or `_`. After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  /// [orgs] The list of organization ids in this AuthorizedOrgsDesc. Format: `organizations/` Example: `organizations/123456`
  GetAuthorizedOrgsDescResult({
    required this.assetType,
    required this.authorizationDirection,
    required this.authorizationType,
    required this.name,
    required this.orgs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetType'] = assetType;
    map['authorizationDirection'] = authorizationDirection;
    map['authorizationType'] = authorizationType;
    map['name'] = name;
    map['orgs'] = orgs;
    return map;
  }

  factory GetAuthorizedOrgsDescResult.fromMap(Map<String, dynamic> map) {
    return GetAuthorizedOrgsDescResult(
      assetType: map['assetType'] as String,
      authorizationDirection: map['authorizationDirection'] as String,
      authorizationType: map['authorizationType'] as String,
      name: map['name'] as String,
      orgs: (map['orgs'] as List).cast<String>(),
    );
  }
}
