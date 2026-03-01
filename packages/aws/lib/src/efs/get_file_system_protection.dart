// ignore_for_file: unused_element, unnecessary_cast


class GetFileSystemProtection {
  final String replicationOverwrite;

  /// Creates a new [GetFileSystemProtection].
  /// [replicationOverwrite] Required.
  GetFileSystemProtection({
    required this.replicationOverwrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationOverwrite': replicationOverwrite,
    };
  }

  factory GetFileSystemProtection.fromMap(Map<String, dynamic> map) {
    return GetFileSystemProtection(
      replicationOverwrite: map['replicationOverwrite'] as String,
    );
  }
}

