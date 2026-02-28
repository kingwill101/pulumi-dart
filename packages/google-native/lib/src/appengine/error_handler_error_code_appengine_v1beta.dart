/// Error condition this handler applies to.
enum ErrorHandlerErrorCodeAppengineV1beta {
  errorCodeUnspecified("ERROR_CODE_UNSPECIFIED"),
  errorCodeDefault("ERROR_CODE_DEFAULT"),
  errorCodeOverQuota("ERROR_CODE_OVER_QUOTA"),
  errorCodeDosApiDenial("ERROR_CODE_DOS_API_DENIAL"),
  errorCodeTimeout("ERROR_CODE_TIMEOUT");

  const ErrorHandlerErrorCodeAppengineV1beta(this.value);
  final String value;

  static ErrorHandlerErrorCodeAppengineV1beta fromValue(String value) {
    for (final item in ErrorHandlerErrorCodeAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ErrorHandlerErrorCodeAppengineV1beta value: $value');
  }
}
