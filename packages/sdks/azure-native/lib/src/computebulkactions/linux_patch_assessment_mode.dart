/// Specifies the mode of VM Guest Patch Assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine. &lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
enum LinuxPatchAssessmentMode {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const LinuxPatchAssessmentMode(this.wireValue);
  final String wireValue;

  static LinuxPatchAssessmentMode fromValue(String value) {
    for (final item in LinuxPatchAssessmentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxPatchAssessmentMode value: $value');
  }
}
