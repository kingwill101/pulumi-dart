import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum RecorderStatus implements pulumi.PulumiEnum<String> {
  failure("Failure"),
  pending("Pending"),
  success("Success");

  const RecorderStatus(this.wireValue);
  @override
  final String wireValue;

  static RecorderStatus fromValue(String value) {
    for (final item in RecorderStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecorderStatus value: $value');
  }
}
