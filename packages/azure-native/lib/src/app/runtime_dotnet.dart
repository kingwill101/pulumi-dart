// ignore_for_file: unused_element, unnecessary_cast


/// .NET app configuration
class RuntimeDotnet {
  /// Auto configure the ASP.NET Core Data Protection feature
  final bool? autoConfigureDataProtection;

  /// Creates a new [RuntimeDotnet].
  /// [autoConfigureDataProtection] Auto configure the ASP.NET Core Data Protection feature
  RuntimeDotnet({
    this.autoConfigureDataProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigureDataProtection': ?autoConfigureDataProtection,
    };
  }

  factory RuntimeDotnet.fromMap(Map<String, dynamic> map) {
    return RuntimeDotnet(
      autoConfigureDataProtection: map['autoConfigureDataProtection'] == null ? null : map['autoConfigureDataProtection'] as bool,
    );
  }
}

