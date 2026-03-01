/// The type of the role assignment schedule request. Eg: SelfActivate, AdminAssign etc
enum RequestType {
  valueAdminAssign("AdminAssign"),
  valueAdminRemove("AdminRemove"),
  valueAdminUpdate("AdminUpdate"),
  valueAdminExtend("AdminExtend"),
  valueAdminRenew("AdminRenew"),
  valueSelfActivate("SelfActivate"),
  valueSelfDeactivate("SelfDeactivate"),
  valueSelfExtend("SelfExtend"),
  valueSelfRenew("SelfRenew");

  const RequestType(this.value);
  final String value;

  static RequestType fromValue(String value) {
    for (final item in RequestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestType value: $value');
  }
}

