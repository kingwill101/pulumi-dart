import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft App Type for the bot
enum MsaAppType implements pulumi.PulumiEnum<String> {
  userAssignedMSI("UserAssignedMSI"),
  singleTenant("SingleTenant"),
  multiTenant("MultiTenant");

  const MsaAppType(this.wireValue);
  @override
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
