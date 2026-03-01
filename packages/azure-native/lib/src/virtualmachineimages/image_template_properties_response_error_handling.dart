// ignore_for_file: unused_element, unnecessary_cast


/// Error handling options upon a build failure
class ImageTemplatePropertiesResponseErrorHandling {
  /// If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  final String? onCustomizerError;
  /// If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  final String? onValidationError;

  /// Creates a new [ImageTemplatePropertiesResponseErrorHandling].
  /// [onCustomizerError] If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  /// [onValidationError] If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  ImageTemplatePropertiesResponseErrorHandling({
    this.onCustomizerError,
    this.onValidationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onCustomizerError': ?onCustomizerError,
      'onValidationError': ?onValidationError,
    };
  }

  factory ImageTemplatePropertiesResponseErrorHandling.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseErrorHandling(
      onCustomizerError: map['onCustomizerError'] == null ? null : map['onCustomizerError'] as String,
      onValidationError: map['onValidationError'] == null ? null : map['onValidationError'] as String,
    );
  }
}

