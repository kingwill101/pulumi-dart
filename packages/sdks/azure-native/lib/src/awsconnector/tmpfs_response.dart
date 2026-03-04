// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Tmpfs
class TmpfsResponse {
  /// The absolute file path where the tmpfs volume is to be mounted.
  final pulumi.Input<String>? containerPath;

  /// The list of tmpfs volume mount options.
  final pulumi.Input<List<String>>? mountOptions;

  /// The maximum size (in MiB) of the tmpfs volume.
  final pulumi.Input<int>? size;

  /// Creates a new [TmpfsResponse].
  /// [containerPath] The absolute file path where the tmpfs volume is to be mounted.
  /// [mountOptions] The list of tmpfs volume mount options.
  /// [size] The maximum size (in MiB) of the tmpfs volume.
  TmpfsResponse({this.containerPath, this.mountOptions, this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPath': ?containerPath,
      'mountOptions': ?mountOptions,
      'size': ?size,
    };
  }

  factory TmpfsResponse.fromMap(Map<String, dynamic> map) {
    return TmpfsResponse(
      containerPath: (() {
        final guardedValue = map['containerPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountOptions: (() {
        final guardedValue = map['mountOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
