/// The name of the signature template that contains default UEFI keys.
enum UefiSignatureTemplateName {
  noSignatureTemplate("NoSignatureTemplate"),
  microsoftUefiCertificateAuthorityTemplate(
    "MicrosoftUefiCertificateAuthorityTemplate",
  ),
  microsoftWindowsTemplate("MicrosoftWindowsTemplate");

  const UefiSignatureTemplateName(this.wireValue);
  final String wireValue;

  static UefiSignatureTemplateName fromValue(String value) {
    for (final item in UefiSignatureTemplateName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UefiSignatureTemplateName value: $value');
  }
}
