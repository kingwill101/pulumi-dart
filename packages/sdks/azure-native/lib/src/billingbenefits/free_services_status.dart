import 'package:pulumi/pulumi.dart' as pulumi;

/// Current status of the free services
enum FreeServicesStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  pending("Pending"),
  active("Active"),
  canceled("Canceled"),
  completed("Completed");

  const FreeServicesStatus(this.wireValue);
  @override
  final String wireValue;

  static FreeServicesStatus fromValue(String value) {
    for (final item in FreeServicesStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeServicesStatus value: $value');
  }
}
