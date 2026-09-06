import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
enum RequestType implements pulumi.PulumiEnum<String> {
  valueAdminAssign("AdminAssign"),
  valueAdminRemove("AdminRemove"),
  valueAdminUpdate("AdminUpdate"),
  valueAdminExtend("AdminExtend"),
  valueAdminRenew("AdminRenew"),
  valueSelfActivate("SelfActivate"),
  valueSelfDeactivate("SelfDeactivate"),
  valueSelfExtend("SelfExtend"),
  valueSelfRenew("SelfRenew");

  const RequestType(this.wireValue);
  @override
  final String wireValue;

  static RequestType fromValue(String value) {
    for (final item in RequestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestType value: $value');
  }
}
