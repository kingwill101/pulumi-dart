/// The type of the managed inbound Load Balancer BackendPool.
enum BackendPoolType {
  valueNodeIPConfiguration("NodeIPConfiguration"),
  valueNodeIP("NodeIP");

  const BackendPoolType(this.wireValue);
  final String wireValue;

  static BackendPoolType fromValue(String value) {
    for (final item in BackendPoolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendPoolType value: $value');
  }
}
