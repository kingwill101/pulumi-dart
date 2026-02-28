// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionEphemeralStorage {
  /// Size of the Lambda function ephemeral storage (`/tmp`) in MB.
  final int size;

  /// Creates a new [GetFunctionEphemeralStorage].
  /// [size] Size of the Lambda function ephemeral storage (`/tmp`) in MB.
  GetFunctionEphemeralStorage({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['size'] = size;
    return map;
  }

  factory GetFunctionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return GetFunctionEphemeralStorage(
      size: map['size'] as int,
    );
  }
}
