// ignore_for_file: unused_element, unnecessary_cast

class FunctionEphemeralStorage {
  /// Amount of ephemeral storage (`/tmp`) in MB. Valid between 512 MB and 10,240 MB (10 GB).
  final int? size;

  /// Creates a new [FunctionEphemeralStorage].
  /// [size] Amount of ephemeral storage (`/tmp`) in MB. Valid between 512 MB and 10,240 MB (10 GB).
  FunctionEphemeralStorage({
    this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    return map;
  }

  factory FunctionEphemeralStorage.fromMap(Map<String, dynamic> map) {
    return FunctionEphemeralStorage(
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}
