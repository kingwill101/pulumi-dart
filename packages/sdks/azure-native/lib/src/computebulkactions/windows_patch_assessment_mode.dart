import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mode of VM Guest patch assessment for the IaaS virtual machine.&lt;br /&gt;&lt;br /&gt; Possible values are:&lt;br /&gt;&lt;br /&gt; **ImageDefault** - You control the timing of patch assessments on a virtual machine.&lt;br /&gt;&lt;br /&gt; **AutomaticByPlatform** - The platform will trigger periodic patch assessments. The property provisionVMAgent must be true.
enum WindowsPatchAssessmentMode implements pulumi.PulumiEnum<String> {
  imageDefault("ImageDefault"),
  automaticByPlatform("AutomaticByPlatform");

  const WindowsPatchAssessmentMode(this.wireValue);
  @override
  final String wireValue;

  static WindowsPatchAssessmentMode fromValue(String value) {
    for (final item in WindowsPatchAssessmentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WindowsPatchAssessmentMode value: $value');
  }
}
