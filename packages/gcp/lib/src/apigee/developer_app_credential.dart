// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_credential_api_product.dart';
import 'developer_app_credential_attribute.dart';

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

  /// Creates a new [DeveloperAppCredential].
  /// [apiProducts] List of API products associated with the developer app.
  /// [attributes] Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// [consumerKey] (Output)
  /// [consumerSecret] (Output)
  /// [expiresAt] (Output)
  /// [issuedAt] (Output)
  /// [scopes] Scopes to apply to the developer app.
  /// [status] Status of the credential. Valid values include approved or revoked.
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
    return <String, dynamic>{
      'apiProducts': ?apiProducts == null
          ? null
          : pulumi.Input.encodeList<
              DeveloperAppCredentialApiProduct,
              Map<String, dynamic>
            >(apiProducts!, (value) => value.toMap()),
      'attributes': ?attributes == null
          ? null
          : pulumi.Input.encodeList<
              DeveloperAppCredentialAttribute,
              Map<String, dynamic>
            >(attributes!, (value) => value.toMap()),
      'consumerKey': ?consumerKey,
      'consumerSecret': ?consumerSecret,
      'expiresAt': ?expiresAt,
      'issuedAt': ?issuedAt,
      'scopes': ?scopes,
      'status': ?status,
    };
  }

  factory DeveloperAppCredential.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredential(
      apiProducts: map['apiProducts'] == null
          ? null
          : pulumi.Input.decodeList<DeveloperAppCredentialApiProduct>(
              map['apiProducts'],
              (value) => DeveloperAppCredentialApiProduct.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<DeveloperAppCredentialAttribute>(
              map['attributes'],
              (value) => DeveloperAppCredentialAttribute.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      consumerKey: map['consumerKey'] == null
          ? null
          : map['consumerKey'] as String,
      consumerSecret: map['consumerSecret'] == null
          ? null
          : map['consumerSecret'] as String,
      expiresAt: map['expiresAt'] == null ? null : map['expiresAt'] as String,
      issuedAt: map['issuedAt'] == null ? null : map['issuedAt'] as String,
      scopes: map['scopes'] == null
          ? null
          : (map['scopes'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
