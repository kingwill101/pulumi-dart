import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the recovery orchestration group action.
enum RecoveryGroupActionType implements pulumi.PulumiEnum<String> {
  manualAction("ManualAction"),
  customRunbook("CustomRunbook");

  const RecoveryGroupActionType(this.wireValue);
  @override
  final String wireValue;

  static RecoveryGroupActionType fromValue(String value) {
    for (final item in RecoveryGroupActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryGroupActionType value: $value');
  }
}
