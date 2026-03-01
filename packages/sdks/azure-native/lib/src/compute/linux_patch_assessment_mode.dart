/// Specifies the mode of VM Guest Patch Assessment for the IaaS virtual machine.<br /><br /> Possible values are:<br /><br /> **ImageDefault** - You control the timing of patch assessments on a virtual machine. <br /><br /> **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
enum LinuxPatchAssessmentMode {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const LinuxPatchAssessmentMode(this.value);
  final String value;

  static LinuxPatchAssessmentMode fromValue(String value) {
    for (final item in LinuxPatchAssessmentMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxPatchAssessmentMode value: $value');
  }
}

