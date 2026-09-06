import 'package:pulumi/pulumi.dart' as pulumi;

/// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
enum UserState implements pulumi.PulumiEnum<String> {
  valueActive("active"),
  valueBlocked("blocked"),
  valuePending("pending"),
  valueDeleted("deleted");

  const UserState(this.wireValue);
  @override
  final String wireValue;

  static UserState fromValue(String value) {
    for (final item in UserState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserState value: $value');
  }
}
