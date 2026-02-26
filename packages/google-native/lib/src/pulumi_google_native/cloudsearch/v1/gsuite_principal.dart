// ignore_for_file: unused_element, unnecessary_cast

class GSuitePrincipal {
  /// This principal represents all users of the Google Workspace domain of the customer.
  final bool? gsuiteDomain;

  /// This principal references a Google Workspace group name.
  final String? gsuiteGroupEmail;

  /// This principal references a Google Workspace user account.
  final String? gsuiteUserEmail;

  GSuitePrincipal({
    this.gsuiteDomain,
    this.gsuiteGroupEmail,
    this.gsuiteUserEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gsuiteDomainValue = gsuiteDomain;
    if (gsuiteDomainValue != null) {
      map['gsuiteDomain'] = gsuiteDomainValue;
    }
    final gsuiteGroupEmailValue = gsuiteGroupEmail;
    if (gsuiteGroupEmailValue != null) {
      map['gsuiteGroupEmail'] = gsuiteGroupEmailValue;
    }
    final gsuiteUserEmailValue = gsuiteUserEmail;
    if (gsuiteUserEmailValue != null) {
      map['gsuiteUserEmail'] = gsuiteUserEmailValue;
    }
    return map;
  }

  factory GSuitePrincipal.fromMap(Map<String, dynamic> map) {
    return GSuitePrincipal(
      gsuiteDomain:
          map['gsuiteDomain'] == null ? null : map['gsuiteDomain'] as bool,
      gsuiteGroupEmail: map['gsuiteGroupEmail'] == null
          ? null
          : map['gsuiteGroupEmail'] as String,
      gsuiteUserEmail: map['gsuiteUserEmail'] == null
          ? null
          : map['gsuiteUserEmail'] as String,
    );
  }
}
