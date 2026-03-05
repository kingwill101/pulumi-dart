/// Validation state for the custom domain. This is a read only property and is initially set to 'Pending' and will be updated to 'Approved' by Event Grid only after ownership of the domain name has been successfully validated.
enum CustomDomainValidationState {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueErrorRetrievingDnsRecord("ErrorRetrievingDnsRecord");

  const CustomDomainValidationState(this.wireValue);
  final String wireValue;

  static CustomDomainValidationState fromValue(String value) {
    for (final item in CustomDomainValidationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainValidationState value: $value');
  }
}

