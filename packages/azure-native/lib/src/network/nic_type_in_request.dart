/// NIC type. This should be either PublicNic or PrivateNic.
enum NicTypeInRequest {
  valuePublicNic("PublicNic"),
  valuePrivateNic("PrivateNic");

  const NicTypeInRequest(this.value);
  final String value;

  static NicTypeInRequest fromValue(String value) {
    for (final item in NicTypeInRequest.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NicTypeInRequest value: $value');
  }
}

