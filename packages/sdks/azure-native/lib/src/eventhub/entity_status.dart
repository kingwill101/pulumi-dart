import 'package:pulumi/pulumi.dart' as pulumi;

/// Enumerates the possible values for the status of the Event Hub.
enum EntityStatus implements pulumi.PulumiEnum<String> {
  valueActive("Active"),
  valueDisabled("Disabled"),
  valueRestoring("Restoring"),
  valueSendDisabled("SendDisabled"),
  valueReceiveDisabled("ReceiveDisabled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueRenaming("Renaming"),
  valueUnknown("Unknown");

  const EntityStatus(this.wireValue);
  @override
  final String wireValue;

  static EntityStatus fromValue(String value) {
    for (final item in EntityStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityStatus value: $value');
  }
}
