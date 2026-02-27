// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AuthorizedOrgsDesc.
class AuthorizedOrgsDescArgs {
  /// The type of entities that need to use the authorization relationship during
  /// evaluation, such as a device. Valid values are "ASSET_TYPE_DEVICE" and
  /// "ASSET_TYPE_CREDENTIAL_STRENGTH".
  /// Possible values are: `ASSET_TYPE_DEVICE`, `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final pulumi.Input<String>? assetType;

  /// The direction of the authorization relationship between this organization
  /// and the organizations listed in the "orgs" field. The valid values for this
  /// field include the following:
  /// AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
  /// in the organizations listed in the `orgs` field.
  /// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the `orgs`
  /// field to evaluate the traffic in this organization.
  /// For the authorization relationship to take effect, all of the organizations
  /// must authorize and specify the appropriate relationship direction. For
  /// example, if organization A authorized organization B and C to evaluate its
  /// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the authorization
  /// direction, organizations B and C must specify
  /// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction in their
  /// "AuthorizedOrgsDesc" resource.
  /// Possible values are: `AUTHORIZATION_DIRECTION_TO`, `AUTHORIZATION_DIRECTION_FROM`.
  final pulumi.Input<String>? authorizationDirection;

  /// A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// Possible values are: `AUTHORIZATION_TYPE_TRUST`.
  final pulumi.Input<String>? authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format:
  /// `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`.
  /// The `authorized_orgs_desc` component must begin with a letter, followed by
  /// alphanumeric characters or `_`.
  /// After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  final pulumi.Input<String>? name;

  /// The list of organization ids in this AuthorizedOrgsDesc.
  /// Format: `organizations/<org_number>`
  /// Example: `organizations/123456`
  final pulumi.Input<List<String>>? orgs;

  /// Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  final pulumi.Input<String> parent;

  AuthorizedOrgsDescArgs({
    this.assetType,
    this.authorizationDirection,
    this.authorizationType,
    this.name,
    this.orgs,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetTypeValue = assetType;
    if (assetTypeValue != null) {
      map['assetType'] = assetTypeValue;
    }
    final authorizationDirectionValue = authorizationDirection;
    if (authorizationDirectionValue != null) {
      map['authorizationDirection'] = authorizationDirectionValue;
    }
    final authorizationTypeValue = authorizationType;
    if (authorizationTypeValue != null) {
      map['authorizationType'] = authorizationTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final orgsValue = orgs;
    if (orgsValue != null) {
      map['orgs'] = orgsValue;
    }
    map['parent'] = parent;
    return map;
  }

  factory AuthorizedOrgsDescArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedOrgsDescArgs(
      assetType: pulumi.Input.asOptionalInput<String>(map['assetType']),
      authorizationDirection:
          pulumi.Input.asOptionalInput<String>(map['authorizationDirection']),
      authorizationType:
          pulumi.Input.asOptionalInput<String>(map['authorizationType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgs: pulumi.Input.asOptionalInput<List<String>>(map['orgs']),
      parent: pulumi.Input.asInput<String>(map['parent']),
    );
  }
}
