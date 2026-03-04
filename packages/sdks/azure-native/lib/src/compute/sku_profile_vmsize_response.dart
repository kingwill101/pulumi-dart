// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VM Size.
class SkuProfileVMSizeResponse {
  /// Specifies the name of the VM Size.
  final pulumi.Input<String>? name;

  /// Specifies the rank (a.k.a priority) associated with the VM Size.
  final pulumi.Input<int>? rank;

  /// Creates a new [SkuProfileVMSizeResponse].
  /// [name] Specifies the name of the VM Size.
  /// [rank] Specifies the rank (a.k.a priority) associated with the VM Size.
  SkuProfileVMSizeResponse({this.name, this.rank});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'rank': ?rank};
  }

  factory SkuProfileVMSizeResponse.fromMap(Map<String, dynamic> map) {
    return SkuProfileVMSizeResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rank: (() {
        final guardedValue = map['rank'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
