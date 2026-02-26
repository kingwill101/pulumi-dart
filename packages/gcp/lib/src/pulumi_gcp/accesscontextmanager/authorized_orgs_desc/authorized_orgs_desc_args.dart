// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AuthorizedOrgsDesc.
class AuthorizedOrgsDescArgs {
  /// The type of entities that need to use the authorization relationship during
  /// evaluation, such as a device. Valid values are "ASSET_TYPE_DEVICE" and
  /// "ASSET_TYPE_CREDENTIAL_STRENGTH".
  /// Possible values are: `ASSET_TYPE_DEVICE`, `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  final Input<String>? assetType;

  /// The direction of the authorization relationship between this organization
  /// and the organizations listed in the "orgs" field. The valid values for this
  /// field include the following:
  /// AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
  /// in the organizations listed in the <span pulumi-lang-nodejs="`orgs`" pulumi-lang-dotnet="`Orgs`" pulumi-lang-go="`orgs`" pulumi-lang-python="`orgs`" pulumi-lang-yaml="`orgs`" pulumi-lang-java="`orgs`">`orgs`</span> field.
  /// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the <span pulumi-lang-nodejs="`orgs`" pulumi-lang-dotnet="`Orgs`" pulumi-lang-go="`orgs`" pulumi-lang-python="`orgs`" pulumi-lang-yaml="`orgs`" pulumi-lang-java="`orgs`">`orgs`</span>
  /// field to evaluate the traffic in this organization.
  /// For the authorization relationship to take effect, all of the organizations
  /// must authorize and specify the appropriate relationship direction. For
  /// example, if organization A authorized organization B and C to evaluate its
  /// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the authorization
  /// direction, organizations B and C must specify
  /// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction in their
  /// "AuthorizedOrgsDesc" resource.
  /// Possible values are: `AUTHORIZATION_DIRECTION_TO`, `AUTHORIZATION_DIRECTION_FROM`.
  final Input<String>? authorizationDirection;

  /// A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// Possible values are: `AUTHORIZATION_TYPE_TRUST`.
  final Input<String>? authorizationType;

  /// Resource name for the `AuthorizedOrgsDesc`. Format:
  /// `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`.
  /// The <span pulumi-lang-nodejs="`authorizedOrgsDesc`" pulumi-lang-dotnet="`AuthorizedOrgsDesc`" pulumi-lang-go="`authorizedOrgsDesc`" pulumi-lang-python="`authorized_orgs_desc`" pulumi-lang-yaml="`authorizedOrgsDesc`" pulumi-lang-java="`authorizedOrgsDesc`">`authorized_orgs_desc`</span> component must begin with a letter, followed by
  /// alphanumeric characters or `_`.
  /// After you create an `AuthorizedOrgsDesc`, you cannot change its <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? name;

  /// The list of organization ids in this AuthorizedOrgsDesc.
  /// Format: `organizations/<org_number>`
  /// Example: `organizations/123456`
  final Input<List<String>>? orgs;

  /// Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  final Input<String> parent;

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
      assetType: Input.asOptionalInput<String>(map['assetType']),
      authorizationDirection:
          Input.asOptionalInput<String>(map['authorizationDirection']),
      authorizationType:
          Input.asOptionalInput<String>(map['authorizationType']),
      name: Input.asOptionalInput<String>(map['name']),
      orgs: Input.asOptionalInput<List<String>>(map['orgs']),
      parent: Input.asInput<String>(map['parent']),
    );
  }
}
