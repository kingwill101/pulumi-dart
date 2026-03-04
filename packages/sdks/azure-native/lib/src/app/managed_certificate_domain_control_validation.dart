/// Selected type of domain control validation for managed certificates.
enum ManagedCertificateDomainControlValidation {
  valueCNAME("CNAME"),
  valueHTTP("HTTP"),
  valueTXT("TXT");

  const ManagedCertificateDomainControlValidation(this.wireValue);
  final String wireValue;

  static ManagedCertificateDomainControlValidation fromValue(String value) {
    for (final item in ManagedCertificateDomainControlValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedCertificateDomainControlValidation value: $value',
    );
  }
}
