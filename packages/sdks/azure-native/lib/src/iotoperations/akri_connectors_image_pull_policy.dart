import 'package:pulumi/pulumi.dart' as pulumi;

/// The pull policy of the image.
enum AkriConnectorsImagePullPolicy implements pulumi.PulumiEnum<String> {
  always("Always"),
  ifNotPresent("IfNotPresent"),
  never_("Never");

  const AkriConnectorsImagePullPolicy(this.wireValue);
  @override
  final String wireValue;

  static AkriConnectorsImagePullPolicy fromValue(String value) {
    for (final item in AkriConnectorsImagePullPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AkriConnectorsImagePullPolicy value: $value');
  }
}
