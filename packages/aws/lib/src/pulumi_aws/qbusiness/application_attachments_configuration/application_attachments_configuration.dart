// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttachmentsConfiguration {
  /// Status information about whether file upload functionality is activated or deactivated for your end user. Valid values are `ENABLED` and `DISABLED`.
  final String attachmentsControlMode;

  ApplicationAttachmentsConfiguration({
    required this.attachmentsControlMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentsControlMode'] = attachmentsControlMode;
    return map;
  }

  factory ApplicationAttachmentsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationAttachmentsConfiguration(
      attachmentsControlMode: map['attachmentsControlMode'] as String,
    );
  }
}
