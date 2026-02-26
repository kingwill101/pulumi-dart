// ignore_for_file: unused_element, unnecessary_cast

import '../template_template_metadata_multi_language_detection/template_template_metadata_multi_language_detection.dart';

class TemplateTemplateMetadata {
  /// Indicates the custom error code set by the user to be returned to the end
  /// user if the LLM response trips Model Armor filters.
  final int? customLlmResponseSafetyErrorCode;

  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the LLM response trips Model Armor filters.
  final String? customLlmResponseSafetyErrorMessage;

  /// Indicates the custom error code set by the user to be returned to the end
  /// user by the service extension if the prompt trips Model Armor filters.
  final int? customPromptSafetyErrorCode;

  /// Indicates the custom error message set by the user to be returned to the
  /// end user if the prompt trips Model Armor filters.
  final String? customPromptSafetyErrorMessage;

  /// Possible values:
  /// INSPECT_ONLY
  /// INSPECT_AND_BLOCK
  final String? enforcementType;

  /// If true, partial detector failures should be ignored.
  final bool? ignorePartialInvocationFailures;

  /// If true, log sanitize operations.
  final bool? logSanitizeOperations;

  /// If true, log template crud operations.
  final bool? logTemplateOperations;

  /// Metadata to enable multi language detection via template.
  /// Structure is documented below.
  final TemplateTemplateMetadataMultiLanguageDetection? multiLanguageDetection;

  TemplateTemplateMetadata({
    this.customLlmResponseSafetyErrorCode,
    this.customLlmResponseSafetyErrorMessage,
    this.customPromptSafetyErrorCode,
    this.customPromptSafetyErrorMessage,
    this.enforcementType,
    this.ignorePartialInvocationFailures,
    this.logSanitizeOperations,
    this.logTemplateOperations,
    this.multiLanguageDetection,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customLlmResponseSafetyErrorCodeValue =
        customLlmResponseSafetyErrorCode;
    if (customLlmResponseSafetyErrorCodeValue != null) {
      map['customLlmResponseSafetyErrorCode'] =
          customLlmResponseSafetyErrorCodeValue;
    }
    final customLlmResponseSafetyErrorMessageValue =
        customLlmResponseSafetyErrorMessage;
    if (customLlmResponseSafetyErrorMessageValue != null) {
      map['customLlmResponseSafetyErrorMessage'] =
          customLlmResponseSafetyErrorMessageValue;
    }
    final customPromptSafetyErrorCodeValue = customPromptSafetyErrorCode;
    if (customPromptSafetyErrorCodeValue != null) {
      map['customPromptSafetyErrorCode'] = customPromptSafetyErrorCodeValue;
    }
    final customPromptSafetyErrorMessageValue = customPromptSafetyErrorMessage;
    if (customPromptSafetyErrorMessageValue != null) {
      map['customPromptSafetyErrorMessage'] =
          customPromptSafetyErrorMessageValue;
    }
    final enforcementTypeValue = enforcementType;
    if (enforcementTypeValue != null) {
      map['enforcementType'] = enforcementTypeValue;
    }
    final ignorePartialInvocationFailuresValue =
        ignorePartialInvocationFailures;
    if (ignorePartialInvocationFailuresValue != null) {
      map['ignorePartialInvocationFailures'] =
          ignorePartialInvocationFailuresValue;
    }
    final logSanitizeOperationsValue = logSanitizeOperations;
    if (logSanitizeOperationsValue != null) {
      map['logSanitizeOperations'] = logSanitizeOperationsValue;
    }
    final logTemplateOperationsValue = logTemplateOperations;
    if (logTemplateOperationsValue != null) {
      map['logTemplateOperations'] = logTemplateOperationsValue;
    }
    final multiLanguageDetectionValue = multiLanguageDetection;
    if (multiLanguageDetectionValue != null) {
      map['multiLanguageDetection'] = multiLanguageDetectionValue.toMap();
    }
    return map;
  }

  factory TemplateTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return TemplateTemplateMetadata(
      customLlmResponseSafetyErrorCode:
          map['customLlmResponseSafetyErrorCode'] == null
              ? null
              : map['customLlmResponseSafetyErrorCode'] as int,
      customLlmResponseSafetyErrorMessage:
          map['customLlmResponseSafetyErrorMessage'] == null
              ? null
              : map['customLlmResponseSafetyErrorMessage'] as String,
      customPromptSafetyErrorCode: map['customPromptSafetyErrorCode'] == null
          ? null
          : map['customPromptSafetyErrorCode'] as int,
      customPromptSafetyErrorMessage:
          map['customPromptSafetyErrorMessage'] == null
              ? null
              : map['customPromptSafetyErrorMessage'] as String,
      enforcementType: map['enforcementType'] == null
          ? null
          : map['enforcementType'] as String,
      ignorePartialInvocationFailures:
          map['ignorePartialInvocationFailures'] == null
              ? null
              : map['ignorePartialInvocationFailures'] as bool,
      logSanitizeOperations: map['logSanitizeOperations'] == null
          ? null
          : map['logSanitizeOperations'] as bool,
      logTemplateOperations: map['logTemplateOperations'] == null
          ? null
          : map['logTemplateOperations'] as bool,
      multiLanguageDetection: map['multiLanguageDetection'] == null
          ? null
          : TemplateTemplateMetadataMultiLanguageDetection.fromMap(
              (map['multiLanguageDetection'] as Map).cast<String, dynamic>()),
    );
  }
}
