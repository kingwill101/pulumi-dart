// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// .NET app configuration
class RuntimeResponseDotnet {
  /// Auto configure the ASP.NET Core Data Protection feature
  final pulumi.Input<bool>? autoConfigureDataProtection;

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
      autoConfigureDataProtection: map['autoConfigureDataProtection'] == null ? null : (map['autoConfigureDataProtection']! as bool).input(),
    );
  }
}

