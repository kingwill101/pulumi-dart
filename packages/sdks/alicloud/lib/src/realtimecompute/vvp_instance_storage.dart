// ignore_for_file: unused_element, unnecessary_cast

import 'vvp_instance_storage_oss.dart';

class VvpInstanceStorage {
  /// OSS stores information. See `oss` below.
  final VvpInstanceStorageOss oss;

  /// Creates a new [VvpInstanceStorage].
  /// [oss] OSS stores information. See `oss` below.
  VvpInstanceStorage({
    required this.oss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oss': oss.toMap(),
    };
  }

  factory VvpInstanceStorage.fromMap(Map<String, dynamic> map) {
    return VvpInstanceStorage(
      oss: VvpInstanceStorageOss.fromMap((map['oss'] as Map).cast<String, dynamic>()),
    );
  }
}

