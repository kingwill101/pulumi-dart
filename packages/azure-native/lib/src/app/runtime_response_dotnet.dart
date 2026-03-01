// ignore_for_file: unused_element, unnecessary_cast


/// .NET app configuration
class RuntimeResponseDotnet {
  /// Auto configure the ASP.NET Core Data Protection feature
  final bool? autoConfigureDataProtection;

  /// Creates a new [RuntimeResponseDotnet].
  /// [autoConfigureDataProtection] Auto configure the ASP.NET Core Data Protection feature
  RuntimeResponseDotnet({
    this.autoConfigureDataProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigureDataProtection': ?autoConfigureDataProtection,
    };
  }

  factory RuntimeResponseDotnet.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseDotnet(
      autoConfigureDataProtection: map['autoConfigureDataProtection'] == null ? null : map['autoConfigureDataProtection'] as bool,
    );
  }
}

