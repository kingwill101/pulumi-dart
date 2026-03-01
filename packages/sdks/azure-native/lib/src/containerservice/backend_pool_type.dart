/// The type of the managed inbound Load Balancer BackendPool.
enum BackendPoolType {
  valueNodeIPConfiguration("NodeIPConfiguration"),
  valueNodeIP("NodeIP");

  const BackendPoolType(this.value);
  final String value;

  static BackendPoolType fromValue(String value) {
    for (final item in BackendPoolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendPoolType value: $value');
  }
}

