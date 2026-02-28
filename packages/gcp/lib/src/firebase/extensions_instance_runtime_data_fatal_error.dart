// ignore_for_file: unused_element, unnecessary_cast

class ExtensionsInstanceRuntimeDataFatalError {
  /// The error message. This is set by the extension developer to give
  /// more detail on why the extension is unusable and must be re-installed
  /// or reconfigured.
  final String? errorMessage;

  /// Creates a new [ExtensionsInstanceRuntimeDataFatalError].
  /// [errorMessage] The error message. This is set by the extension developer to give
  ExtensionsInstanceRuntimeDataFatalError({
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorMessageValue = errorMessage;
    if (errorMessageValue != null) {
      map['errorMessage'] = errorMessageValue;
    }
    return map;
  }

  factory ExtensionsInstanceRuntimeDataFatalError.fromMap(
      Map<String, dynamic> map) {
    return ExtensionsInstanceRuntimeDataFatalError(
      errorMessage:
          map['errorMessage'] == null ? null : map['errorMessage'] as String,
    );
  }
}
