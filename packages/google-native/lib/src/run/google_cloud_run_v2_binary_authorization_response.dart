// ignore_for_file: unused_element, unnecessary_cast

/// Settings for Binary Authorization feature.
class GoogleCloudRunV2BinaryAuthorizationResponse {
  /// If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  final String breakglassJustification;

  /// If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  final bool useDefault;

  /// Creates a new [GoogleCloudRunV2BinaryAuthorizationResponse].
  /// [breakglassJustification] If present, indicates to use Breakglass using this justification. If use_default is False, then it must be empty. For more information on breakglass, see https://cloud.google.com/binary-authorization/docs/using-breakglass
  /// [useDefault] If True, indicates to use the default project's binary authorization policy. If False, binary authorization will be disabled.
  GoogleCloudRunV2BinaryAuthorizationResponse({
    required this.breakglassJustification,
    required this.useDefault,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['breakglassJustification'] = breakglassJustification;
    map['useDefault'] = useDefault;
    return map;
  }

  factory GoogleCloudRunV2BinaryAuthorizationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2BinaryAuthorizationResponse(
      breakglassJustification: map['breakglassJustification'] as String,
      useDefault: map['useDefault'] as bool,
    );
  }
}
