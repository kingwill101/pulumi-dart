/// Microsoft App Type for the bot
enum MsaAppType {
  userAssignedMSI("UserAssignedMSI"),
  singleTenant("SingleTenant"),
  multiTenant("MultiTenant");

  const MsaAppType(this.value);
  final String value;

  static MsaAppType fromValue(String value) {
    for (final item in MsaAppType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MsaAppType value: $value');
  }
}

