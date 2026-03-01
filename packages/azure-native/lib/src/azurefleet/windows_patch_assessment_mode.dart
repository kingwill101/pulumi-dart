/// Specifies the mode of VM Guest patch assessment for the IaaS virtual
/// machine.<br /><br /> Possible values are:<br /><br /> **ImageDefault** - You
/// control the timing of patch assessments on a virtual machine.<br /><br />
/// **AutomaticByPlatform** - The platform will trigger periodic patch assessments.
/// The property provisionVMAgent must be true.
enum WindowsPatchAssessmentMode {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const WindowsPatchAssessmentMode(this.value);
  final String value;

  static WindowsPatchAssessmentMode fromValue(String value) {
    for (final item in WindowsPatchAssessmentMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsPatchAssessmentMode value: $value');
  }
}

