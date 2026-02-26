// ignore_for_file: unused_element, unnecessary_cast

/// How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.
class GooglePrivacyDlpV2TransformationErrorHandling {
  /// Ignore errors
  final Map<String, dynamic>? leaveUntransformed;

  /// Throw an error
  final Map<String, dynamic>? throwError;

  GooglePrivacyDlpV2TransformationErrorHandling({
    this.leaveUntransformed,
    this.throwError,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final leaveUntransformedValue = leaveUntransformed;
    if (leaveUntransformedValue != null) {
      map['leaveUntransformed'] = leaveUntransformedValue;
    }
    final throwErrorValue = throwError;
    if (throwErrorValue != null) {
      map['throwError'] = throwErrorValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2TransformationErrorHandling.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TransformationErrorHandling(
      leaveUntransformed: map['leaveUntransformed'] == null
          ? null
          : (map['leaveUntransformed'] as Map).cast<String, dynamic>(),
      throwError: map['throwError'] == null
          ? null
          : (map['throwError'] as Map).cast<String, dynamic>(),
    );
  }
}
