/// Error condition this handler applies to.
enum ErrorHandlerErrorCode2 {
  errorCodeUnspecified("ERROR_CODE_UNSPECIFIED"),
  errorCodeDefault("ERROR_CODE_DEFAULT"),
  errorCodeOverQuota("ERROR_CODE_OVER_QUOTA"),
  errorCodeDosApiDenial("ERROR_CODE_DOS_API_DENIAL"),
  errorCodeTimeout("ERROR_CODE_TIMEOUT");

  const ErrorHandlerErrorCode2(this.value);
  final String value;

  static ErrorHandlerErrorCode2 fromValue(String value) {
    for (final item in ErrorHandlerErrorCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorHandlerErrorCode2 value: $value');
  }
}
