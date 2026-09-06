import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum IpamState implements pulumi.PulumiEnum<String> {
  createComplete("create-complete"),
  createFailed("create-failed"),
  createInProgress("create-in-progress"),
  deleteComplete("delete-complete"),
  deleteFailed("delete-failed"),
  deleteInProgress("delete-in-progress"),
  isolateComplete("isolate-complete"),
  isolateInProgress("isolate-in-progress"),
  modifyComplete("modify-complete"),
  modifyFailed("modify-failed"),
  modifyInProgress("modify-in-progress"),
  restoreInProgress("restore-in-progress");

  const IpamState(this.wireValue);
  @override
  final String wireValue;

  static IpamState fromValue(String value) {
    for (final item in IpamState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpamState value: $value');
  }
}
