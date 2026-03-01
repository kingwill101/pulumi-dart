/// Define whether peer or origin identity should be used for principal. Default value is USE_PEER. If peer (or origin) identity is not available, either because peer/origin authentication is not defined, or failed, principal will be left unset. In other words, binding rule does not affect the decision to accept or reject request. This field can be set to one of the following: USE_PEER: Principal will be set to the identity from peer authentication. USE_ORIGIN: Principal will be set to the identity from origin authentication.
enum AuthenticationPolicyPrincipalBinding {
  invalid("INVALID"),
  useOrigin("USE_ORIGIN"),
  usePeer("USE_PEER");

  const AuthenticationPolicyPrincipalBinding(this.value);
  final String value;

  static AuthenticationPolicyPrincipalBinding fromValue(String value) {
    for (final item in AuthenticationPolicyPrincipalBinding.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuthenticationPolicyPrincipalBinding value: $value',
    );
  }
}
