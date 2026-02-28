/// Error condition this handler applies to.
enum ErrorHandlerErrorCode {
  errorCodeUnspecified("ERROR_CODE_UNSPECIFIED"),
  errorCodeDefault("ERROR_CODE_DEFAULT"),
  errorCodeOverQuota("ERROR_CODE_OVER_QUOTA"),
  errorCodeDosApiDenial("ERROR_CODE_DOS_API_DENIAL"),
  errorCodeTimeout("ERROR_CODE_TIMEOUT");

  const ErrorHandlerErrorCode(this.value);
  final String value;

  static ErrorHandlerErrorCode fromValue(String value) {
    for (final item in ErrorHandlerErrorCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorHandlerErrorCode value: $value');
  }
}

