// ignore_for_file: unused_element, unnecessary_cast

class GetFileSystemProtection {
  final String replicationOverwrite;

  GetFileSystemProtection({
    required this.replicationOverwrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicationOverwrite'] = replicationOverwrite;
    return map;
  }

  factory GetFileSystemProtection.fromMap(Map<String, dynamic> map) {
    return GetFileSystemProtection(
      replicationOverwrite: map['replicationOverwrite'] as String,
    );
  }
}
