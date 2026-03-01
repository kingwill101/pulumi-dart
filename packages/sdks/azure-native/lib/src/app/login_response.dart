// ignore_for_file: unused_element, unnecessary_cast

import 'cookie_expiration_response.dart';
import 'login_routes_response.dart';
import 'nonce_response.dart';
import 'token_store_response.dart';

/// The configuration settings of the login flow of users using ContainerApp Service Authentication/Authorization.
class LoginResponse {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  final List<String>? allowedExternalRedirectUrls;
  /// The configuration settings of the session cookie's expiration.
  final CookieExpirationResponse? cookieExpiration;
  /// The configuration settings of the nonce used in the login flow.
  final NonceResponse? nonce;
  /// <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  final bool? preserveUrlFragmentsForLogins;
  /// The routes that specify the endpoints used for login and logout requests.
  final LoginRoutesResponse? routes;
  /// The configuration settings of the token store.
  final TokenStoreResponse? tokenStore;

  /// Creates a new [LoginResponse].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// [cookieExpiration] The configuration settings of the session cookie's expiration.
  /// [nonce] The configuration settings of the nonce used in the login flow.
  /// [preserveUrlFragmentsForLogins] <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  /// [routes] The routes that specify the endpoints used for login and logout requests.
  /// [tokenStore] The configuration settings of the token store.
  LoginResponse({
    this.allowedExternalRedirectUrls,
    this.cookieExpiration,
    this.nonce,
    this.preserveUrlFragmentsForLogins,
    this.routes,
    this.tokenStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'cookieExpiration': ?cookieExpiration == null ? null : cookieExpiration!.toMap(),
      'nonce': ?nonce == null ? null : nonce!.toMap(),
      'preserveUrlFragmentsForLogins': ?preserveUrlFragmentsForLogins,
      'routes': ?routes == null ? null : routes!.toMap(),
      'tokenStore': ?tokenStore == null ? null : tokenStore!.toMap(),
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      cookieExpiration: map['cookieExpiration'] == null ? null : CookieExpirationResponse.fromMap((map['cookieExpiration'] as Map).cast<String, dynamic>()),
      nonce: map['nonce'] == null ? null : NonceResponse.fromMap((map['nonce'] as Map).cast<String, dynamic>()),
      preserveUrlFragmentsForLogins: map['preserveUrlFragmentsForLogins'] == null ? null : map['preserveUrlFragmentsForLogins'] as bool,
      routes: map['routes'] == null ? null : LoginRoutesResponse.fromMap((map['routes'] as Map).cast<String, dynamic>()),
      tokenStore: map['tokenStore'] == null ? null : TokenStoreResponse.fromMap((map['tokenStore'] as Map).cast<String, dynamic>()),
    );
  }
}

