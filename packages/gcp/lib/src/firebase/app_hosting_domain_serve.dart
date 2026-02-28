// ignore_for_file: unused_element, unnecessary_cast

import 'app_hosting_domain_serve_redirect.dart';

class AppHostingDomainServe {
  /// Specifies redirect behavior for a domain.
  /// Structure is documented below.
  final AppHostingDomainServeRedirect? redirect;

  /// Creates a new [AppHostingDomainServe].
  /// [redirect] Specifies redirect behavior for a domain.
  AppHostingDomainServe({
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final redirectValue = redirect;
    if (redirectValue != null) {
      map['redirect'] = redirectValue.toMap();
    }
    return map;
  }

  factory AppHostingDomainServe.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainServe(
      redirect: map['redirect'] == null
          ? null
          : AppHostingDomainServeRedirect.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>()),
    );
  }
}
