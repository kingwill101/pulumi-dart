/// Microsoft App Type for the bot
enum MsaAppType {
  userAssignedMSI("UserAssignedMSI"),
  singleTenant("SingleTenant"),
  multiTenant("MultiTenant");

  const MsaAppType(this.wireValue);
  final String wireValue;

  static MsaAppType fromValue(String value) {
    for (final item in MsaAppType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MsaAppType value: $value');
  }
}

