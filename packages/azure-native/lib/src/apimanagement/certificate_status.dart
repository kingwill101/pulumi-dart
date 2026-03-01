/// Certificate Status.
enum CertificateStatus {
  valueCompleted("Completed"),
  valueFailed("Failed"),
  valueInProgress("InProgress");

  const CertificateStatus(this.value);
  final String value;

  static CertificateStatus fromValue(String value) {
    for (final item in CertificateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStatus value: $value');
  }
}

