// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../developer_app_attribute/developer_app_attribute.dart';

/// The set of arguments for DeveloperApp.
class DeveloperAppArgs {
  /// List of API products associated with the developer app.
  final pulumi.Input<List<String>>? apiProducts;

  /// Developer app family.
  final pulumi.Input<String>? appFamily;

  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final pulumi.Input<List<DeveloperAppAttribute>>? attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  final pulumi.Input<String> callbackUrl;

  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  final pulumi.Input<String> developerEmail;

  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  final pulumi.Input<String>? keyExpiresIn;

  /// Name of the developer app.
  final pulumi.Input<String>? name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final pulumi.Input<List<String>>? scopes;

  /// Status of the credential. Valid values include approved or revoked.
  final pulumi.Input<String>? status;

  DeveloperAppArgs({
    this.apiProducts,
    this.appFamily,
    this.attributes,
    required this.callbackUrl,
    required this.developerEmail,
    this.keyExpiresIn,
    this.name,
    required this.orgId,
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
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.mapOptionalInputValue<
              List<DeveloperAppAttribute>, List<Map<String, dynamic>>>(
          attributesValue,
          (value) => pulumi.Input.encodeList<DeveloperAppAttribute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['callbackUrl'] = callbackUrl;
    map['developerEmail'] = developerEmail;
    final keyExpiresInValue = keyExpiresIn;
    if (keyExpiresInValue != null) {
      map['keyExpiresIn'] = keyExpiresInValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
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
      attributes: pulumi.Input.asOptionalInput<List<DeveloperAppAttribute>>(
          map['attributes']),
      callbackUrl: pulumi.Input.asInput<String>(map['callbackUrl']),
      developerEmail: pulumi.Input.asInput<String>(map['developerEmail']),
      keyExpiresIn: pulumi.Input.asOptionalInput<String>(map['keyExpiresIn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
      scopes: pulumi.Input.asOptionalInput<List<String>>(map['scopes']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
