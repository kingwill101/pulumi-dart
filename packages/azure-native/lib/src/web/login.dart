// ignore_for_file: unused_element, unnecessary_cast

import 'cookie_expiration.dart';
import 'login_routes.dart';
import 'nonce.dart';
import 'token_store.dart';

/// The configuration settings of the login flow of users using App Service Authentication/Authorization.
class Login {
  /// External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// This is an advanced setting typically only needed by Windows Store application backends.
  /// Note that URLs within the current domain are always implicitly allowed.
  final List<String>? allowedExternalRedirectUrls;
  /// The configuration settings of the session cookie's expiration.
  final CookieExpiration? cookieExpiration;
  /// The configuration settings of the nonce used in the login flow.
  final Nonce? nonce;
  /// <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  final bool? preserveUrlFragmentsForLogins;
  /// The routes that specify the endpoints used for login and logout requests.
  final LoginRoutes? routes;
  /// The configuration settings of the token store.
  final TokenStore? tokenStore;

  /// Creates a new [Login].
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app. Note that the query string part of the URL is ignored.
  /// [cookieExpiration] The configuration settings of the session cookie's expiration.
  /// [nonce] The configuration settings of the nonce used in the login flow.
  /// [preserveUrlFragmentsForLogins] <code>true</code> if the fragments from the request are preserved after the login request is made; otherwise, <code>false</code>.
  /// [routes] The routes that specify the endpoints used for login and logout requests.
  /// [tokenStore] The configuration settings of the token store.
  Login({
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

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      cookieExpiration: map['cookieExpiration'] == null ? null : CookieExpiration.fromMap((map['cookieExpiration'] as Map).cast<String, dynamic>()),
      nonce: map['nonce'] == null ? null : Nonce.fromMap((map['nonce'] as Map).cast<String, dynamic>()),
      preserveUrlFragmentsForLogins: map['preserveUrlFragmentsForLogins'] == null ? null : map['preserveUrlFragmentsForLogins'] as bool,
      routes: map['routes'] == null ? null : LoginRoutes.fromMap((map['routes'] as Map).cast<String, dynamic>()),
      tokenStore: map['tokenStore'] == null ? null : TokenStore.fromMap((map['tokenStore'] as Map).cast<String, dynamic>()),
    );
  }
}

