import 'package:pulumi/pulumi.dart' as pulumi;

/// HostPool type for desktop.
enum ScalingHostPoolType implements pulumi.PulumiEnum<String> {
  valuePooled("Pooled");

  const ScalingHostPoolType(this.wireValue);
  @override
  final String wireValue;

  static ScalingHostPoolType fromValue(String value) {
    for (final item in ScalingHostPoolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScalingHostPoolType value: $value');
  }
}
