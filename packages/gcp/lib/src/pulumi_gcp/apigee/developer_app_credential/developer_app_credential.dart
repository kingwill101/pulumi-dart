// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../developer_app_credential_api_product/developer_app_credential_api_product.dart';
import '../developer_app_credential_attribute/developer_app_credential_attribute.dart';

class DeveloperAppCredential {
  /// List of API products associated with the developer app.
  final List<DeveloperAppCredentialApiProduct>? apiProducts;

  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  final List<DeveloperAppCredentialAttribute>? attributes;

  /// (Output)
  /// Consumer key.
  final String? consumerKey;

  /// (Output)
  /// Secret key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? consumerSecret;

  /// (Output)
  /// Time the credential will expire in milliseconds since epoch.
  final String? expiresAt;

  /// (Output)
  /// Time the credential was issued in milliseconds since epoch.
  final String? issuedAt;

  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  final List<String>? scopes;

  /// Status of the credential. Valid values include approved or revoked.
  final String? status;

  DeveloperAppCredential({
    this.apiProducts,
    this.attributes,
    this.consumerKey,
    this.consumerSecret,
    this.expiresAt,
    this.issuedAt,
    this.scopes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiProductsValue = apiProducts;
    if (apiProductsValue != null) {
      map['apiProducts'] = pulumi.Input.encodeList<
          DeveloperAppCredentialApiProduct,
          Map<String, dynamic>>(apiProductsValue, (value) => value.toMap());
    }
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.encodeList<
          DeveloperAppCredentialAttribute,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    final consumerKeyValue = consumerKey;
    if (consumerKeyValue != null) {
      map['consumerKey'] = consumerKeyValue;
    }
    final consumerSecretValue = consumerSecret;
    if (consumerSecretValue != null) {
      map['consumerSecret'] = consumerSecretValue;
    }
    final expiresAtValue = expiresAt;
    if (expiresAtValue != null) {
      map['expiresAt'] = expiresAtValue;
    }
    final issuedAtValue = issuedAt;
    if (issuedAtValue != null) {
      map['issuedAt'] = issuedAtValue;
    }
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

  factory DeveloperAppCredential.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredential(
      apiProducts: map['apiProducts'] == null
          ? null
          : pulumi.Input.decodeList<DeveloperAppCredentialApiProduct>(
              map['apiProducts'],
              (value) => DeveloperAppCredentialApiProduct.fromMap(
                  (value as Map).cast<String, dynamic>())),
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<DeveloperAppCredentialAttribute>(
              map['attributes'],
              (value) => DeveloperAppCredentialAttribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      consumerKey:
          map['consumerKey'] == null ? null : map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] == null
          ? null
          : map['consumerSecret'] as String,
      expiresAt: map['expiresAt'] == null ? null : map['expiresAt'] as String,
      issuedAt: map['issuedAt'] == null ? null : map['issuedAt'] as String,
      scopes:
          map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
