// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// .NET app configuration
class RuntimeDotnet {
  /// Auto configure the ASP.NET Core Data Protection feature
  final pulumi.Input<bool?>? autoConfigureDataProtection;

  /// Creates a new [RuntimeDotnet].
  /// [autoConfigureDataProtection] Auto configure the ASP.NET Core Data Protection feature
  const RuntimeDotnet({
    this.autoConfigureDataProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigureDataProtection': ?autoConfigureDataProtection,
    };
  }

  factory RuntimeDotnet.fromMap(Map<String, dynamic> map) {
    return RuntimeDotnet(
      autoConfigureDataProtection: (() { final guardedValue = map['autoConfigureDataProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
