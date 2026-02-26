// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedPropertiesApexDetails"" pulumi-lang-dotnet=""NestedPropertiesApexDetails"" pulumi-lang-go=""nestedPropertiesApexDetails"" pulumi-lang-python=""nested_properties_apex_details"" pulumi-lang-yaml=""nestedPropertiesApexDetails"" pulumi-lang-java=""nestedPropertiesApexDetails"">"nested_properties_apex_details"</span>></a>The <span pulumi-lang-nodejs="`apexDetails`" pulumi-lang-dotnet="`ApexDetails`" pulumi-lang-go="`apexDetails`" pulumi-lang-python="`apex_details`" pulumi-lang-yaml="`apexDetails`" pulumi-lang-java="`apexDetails`">`apex_details`</span> block contains:
  final String email;

  AutonomousDatabasePropertiesCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory AutonomousDatabasePropertiesCustomerContact.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesCustomerContact(
      email: map['email'] as String,
    );
  }
}
