// ignore_for_file: unused_element, unnecessary_cast


class AppFlexConsumptionSiteCredential {
  /// The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  final String? name;
  /// The Site Credentials Password used for publishing.
  final String? password;

  /// Creates a new [AppFlexConsumptionSiteCredential].
  /// [name] The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  /// [password] The Site Credentials Password used for publishing.
  AppFlexConsumptionSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory AppFlexConsumptionSiteCredential.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionSiteCredential(
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

