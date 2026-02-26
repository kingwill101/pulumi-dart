/// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
enum ConnectionEventingEnablementType {
  eventingEnablementTypeUnspecified("EVENTING_ENABLEMENT_TYPE_UNSPECIFIED"),
  eventingAndConnection("EVENTING_AND_CONNECTION"),
  onlyEventing("ONLY_EVENTING");

  const ConnectionEventingEnablementType(this.value);
  final String value;

  static ConnectionEventingEnablementType fromValue(String value) {
    for (final item in ConnectionEventingEnablementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ConnectionEventingEnablementType value: $value');
  }
}
