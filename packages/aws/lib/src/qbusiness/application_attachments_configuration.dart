// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttachmentsConfiguration {
  /// Status information about whether file upload functionality is activated or deactivated for your end user. Valid values are `ENABLED` and `DISABLED`.
  final String attachmentsControlMode;

  /// Creates a new [ApplicationAttachmentsConfiguration].
  /// [attachmentsControlMode] Status information about whether file upload functionality is activated or deactivated for your end user. Valid values are `ENABLED` and `DISABLED`.
  ApplicationAttachmentsConfiguration({required this.attachmentsControlMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'attachmentsControlMode': attachmentsControlMode};
  }

  factory ApplicationAttachmentsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationAttachmentsConfiguration(
      attachmentsControlMode: map['attachmentsControlMode'] as String,
    );
  }
}
