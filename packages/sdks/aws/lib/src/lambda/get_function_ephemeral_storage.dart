// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionEphemeralStorage {
  /// Size of the Lambda function ephemeral storage (`/tmp`) in MB.
  final pulumi.Input<int> size;

  /// Creates a new [GetFunctionEphemeralStorage].
  /// [size] Size of the Lambda function ephemeral storage (`/tmp`) in MB.
  GetFunctionEphemeralStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory GetFunctionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetFunctionEphemeralStorage(
      size: (map['size'] as int).input(),
    );
  }
}

