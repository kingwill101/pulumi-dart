/// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
enum UserState {
  valueActive("active"),
  valueBlocked("blocked"),
  valuePending("pending"),
  valueDeleted("deleted");

  const UserState(this.value);
  final String value;

  static UserState fromValue(String value) {
    for (final item in UserState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserState value: $value');
  }
}

