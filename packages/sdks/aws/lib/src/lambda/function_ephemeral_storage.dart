// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEphemeralStorage {
  /// Amount of ephemeral storage (`/tmp`) in MB. Valid between 512 MB and 10,240 MB (10 GB).
  final pulumi.Input<int>? size;

  /// Creates a new [FunctionEphemeralStorage].
  /// [size] Amount of ephemeral storage (`/tmp`) in MB. Valid between 512 MB and 10,240 MB (10 GB).
  const FunctionEphemeralStorage({
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
    };
  }

  factory FunctionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return FunctionEphemeralStorage(
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

