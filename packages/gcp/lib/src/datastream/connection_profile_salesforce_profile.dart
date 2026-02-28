// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_salesforce_profile_oauth2_client_credentials.dart';
import 'connection_profile_salesforce_profile_user_credentials.dart';

class ConnectionProfileSalesforceProfile {
  /// Domain for the Salesforce Org.
  final String domain;

  /// OAuth credentials to use for Salesforce authentication.
  /// Structure is documented below.
  final ConnectionProfileSalesforceProfileOauth2ClientCredentials?
      oauth2ClientCredentials;

  /// User credentials to use for Salesforce authentication.
  /// Structure is documented below.
  final ConnectionProfileSalesforceProfileUserCredentials? userCredentials;

  /// Creates a new [ConnectionProfileSalesforceProfile].
  /// [domain] Domain for the Salesforce Org.
  /// [oauth2ClientCredentials] OAuth credentials to use for Salesforce authentication.
  /// [userCredentials] User credentials to use for Salesforce authentication.
  ConnectionProfileSalesforceProfile({
    required this.domain,
    this.oauth2ClientCredentials,
    this.userCredentials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final oauth2ClientCredentialsValue = oauth2ClientCredentials;
    if (oauth2ClientCredentialsValue != null) {
      map['oauth2ClientCredentials'] = oauth2ClientCredentialsValue.toMap();
    }
    final userCredentialsValue = userCredentials;
    if (userCredentialsValue != null) {
      map['userCredentials'] = userCredentialsValue.toMap();
    }
    return map;
  }

  factory ConnectionProfileSalesforceProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSalesforceProfile(
      domain: map['domain'] as String,
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null
          ? null
          : ConnectionProfileSalesforceProfileOauth2ClientCredentials.fromMap(
              (map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      userCredentials: map['userCredentials'] == null
          ? null
          : ConnectionProfileSalesforceProfileUserCredentials.fromMap(
              (map['userCredentials'] as Map).cast<String, dynamic>()),
    );
  }
}
