// ignore_for_file: unused_element, unnecessary_cast


class TenantClientPermissions {
  /// When true, end users cannot delete their account on the associated project through any of our API methods.
  final bool? disabledUserDeletion;
  /// When true, end users cannot sign up for a new account on the associated project through any of our API methods.
  final bool? disabledUserSignup;

  /// Creates a new [TenantClientPermissions].
  /// [disabledUserDeletion] When true, end users cannot delete their account on the associated project through any of our API methods.
  /// [disabledUserSignup] When true, end users cannot sign up for a new account on the associated project through any of our API methods.
  TenantClientPermissions({
    this.disabledUserDeletion,
    this.disabledUserSignup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledUserDeletion': ?disabledUserDeletion,
      'disabledUserSignup': ?disabledUserSignup,
    };
  }

  factory TenantClientPermissions.fromMap(Map<String, dynamic> map) {
    return TenantClientPermissions(
      disabledUserDeletion: map['disabledUserDeletion'] == null ? null : map['disabledUserDeletion'] as bool,
      disabledUserSignup: map['disabledUserSignup'] == null ? null : map['disabledUserSignup'] as bool,
    );
  }
}

