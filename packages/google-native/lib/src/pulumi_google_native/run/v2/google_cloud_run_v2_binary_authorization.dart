// ignore_for_file: unused_element, unnecessary_cast

/// Settings for Binary Authorization feature.
class GoogleCloudRunV2BinaryAuthorization {
  /// If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final String? breakglassJustification;

  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final bool? useDefault;

  GoogleCloudRunV2BinaryAuthorization({
    this.breakglassJustification,
    this.useDefault,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final breakglassJustificationValue = breakglassJustification;
    if (breakglassJustificationValue != null) {
      map['breakglassJustification'] = breakglassJustificationValue;
    }
    final useDefaultValue = useDefault;
    if (useDefaultValue != null) {
      map['useDefault'] = useDefaultValue;
    }
    return map;
  }

  factory GoogleCloudRunV2BinaryAuthorization.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2BinaryAuthorization(
      breakglassJustification: map['breakglassJustification'] == null
          ? null
          : map['breakglassJustification'] as String,
      useDefault: map['useDefault'] == null ? null : map['useDefault'] as bool,
    );
  }
}
