import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates what lab virtual machines are created from.
enum CreateOption implements pulumi.PulumiEnum<String> {
  valueImage("Image"),
  valueTemplateVM("TemplateVM");

  const CreateOption(this.wireValue);
  @override
  final String wireValue;

  static CreateOption fromValue(String value) {
    for (final item in CreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateOption value: $value');
  }
}
