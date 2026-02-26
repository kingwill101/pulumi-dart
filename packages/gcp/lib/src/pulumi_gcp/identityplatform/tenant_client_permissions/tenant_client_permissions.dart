// ignore_for_file: unused_element, unnecessary_cast

class TenantClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods.
  final bool? disabledUserDeletion;

  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods.
  final bool? disabledUserSignup;

  TenantClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledUserDeletionValue = disabledUserDeletion;
    if (disabledUserDeletionValue != null) {
      map['disabledUserDeletion'] = disabledUserDeletionValue;
    }
    final disabledUserSignupValue = disabledUserSignup;
    if (disabledUserSignupValue != null) {
      map['disabledUserSignup'] = disabledUserSignupValue;
    }
    return map;
  }

  factory TenantClientPermissions.fromMap(Map<String, dynamic> map) {
    return TenantClientPermissions(
      disabledUserDeletion: map['disabledUserDeletion'] == null
          ? null
          : map['disabledUserDeletion'] as bool,
      disabledUserSignup: map['disabledUserSignup'] == null
          ? null
          : map['disabledUserSignup'] as bool,
    );
  }
}
