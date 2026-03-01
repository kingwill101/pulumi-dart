// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the linux configuration for update management.
class OSProfileLinuxConfiguration {
  /// Specifies the assessment mode.
  final String? assessmentMode;
  /// Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  final bool? enableHotpatching;
  /// Specifies the patch mode.
  final String? patchMode;

  /// Creates a new [OSProfileLinuxConfiguration].
  /// [assessmentMode] Specifies the assessment mode.
  /// [enableHotpatching] Captures the hotpatch capability enrollment intent of the customers, which enables customers to patch their Windows machines without requiring a reboot.
  /// [patchMode] Specifies the patch mode.
  OSProfileLinuxConfiguration({
    this.assessmentMode,
    this.enableHotpatching,
    this.patchMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentMode': ?assessmentMode,
      'enableHotpatching': ?enableHotpatching,
      'patchMode': ?patchMode,
    };
  }

  factory OSProfileLinuxConfiguration.fromMap(Map<String, dynamic> map) {
    return OSProfileLinuxConfiguration(
      assessmentMode: map['assessmentMode'] == null ? null : map['assessmentMode'] as String,
      enableHotpatching: map['enableHotpatching'] == null ? null : map['enableHotpatching'] as bool,
      patchMode: map['patchMode'] == null ? null : map['patchMode'] as String,
    );
  }
}

