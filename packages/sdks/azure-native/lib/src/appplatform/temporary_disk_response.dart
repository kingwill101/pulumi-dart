// ignore_for_file: unused_element, unnecessary_cast


/// Temporary disk payload
class TemporaryDiskResponse {
  /// Mount path of the temporary disk
  final String? mountPath;
  /// Size of the temporary disk in GB
  final int? sizeInGB;

  /// Creates a new [TemporaryDiskResponse].
  /// [mountPath] Mount path of the temporary disk
  /// [sizeInGB] Size of the temporary disk in GB
  TemporaryDiskResponse({
    this.mountPath,
    this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory TemporaryDiskResponse.fromMap(Map<String, dynamic> map) {
    return TemporaryDiskResponse(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      sizeInGB: map['sizeInGB'] == null ? null : map['sizeInGB'] as int,
    );
  }
}

