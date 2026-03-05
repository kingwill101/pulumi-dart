/// Certificate Status.
enum CertificateStatus {
  valueCompleted("Completed"),
  valueFailed("Failed"),
  valueInProgress("InProgress");

  const CertificateStatus(this.wireValue);
  final String wireValue;

  static CertificateStatus fromValue(String value) {
    for (final item in CertificateStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStatus value: $value');
  }
}

