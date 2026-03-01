// ignore_for_file: unused_element, unnecessary_cast


/// Specifies additional XML formatted information that can be included in the
/// Unattend.xml file, which is used by Windows Setup. Contents are defined by
/// setting name, component name, and the pass in which the content is applied.
class AdditionalUnattendContentResponse {
  /// The component name. Currently, the only allowable value is
  /// Microsoft-Windows-Shell-Setup.
  final String? componentName;
  /// The pass name. Currently, the only allowable value is OobeSystem.
  final String? passName;
  /// Specifies the name of the setting to which the content applies. Possible values
  /// are: FirstLogonCommands and AutoLogon.
  final String? settingName;

  /// Creates a new [AdditionalUnattendContentResponse].
  /// [componentName] The component name. Currently, the only allowable value is
  /// [passName] The pass name. Currently, the only allowable value is OobeSystem.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values
  AdditionalUnattendContentResponse({
    this.componentName,
    this.passName,
    this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': ?componentName,
      'passName': ?passName,
      'settingName': ?settingName,
    };
  }

  factory AdditionalUnattendContentResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalUnattendContentResponse(
      componentName: map['componentName'] == null ? null : map['componentName'] as String,
      passName: map['passName'] == null ? null : map['passName'] as String,
      settingName: map['settingName'] == null ? null : map['settingName'] as String,
    );
  }
}

