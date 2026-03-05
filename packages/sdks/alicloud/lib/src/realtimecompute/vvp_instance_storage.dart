// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vvp_instance_storage_oss.dart';

class VvpInstanceStorage {
  /// OSS stores information. See `oss` below.
  final pulumi.Input<VvpInstanceStorageOss> oss;

  /// Creates a new [VvpInstanceStorage].
  /// [oss] OSS stores information. See `oss` below.
  VvpInstanceStorage({
    required this.oss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oss': pulumi.Input.mapInputValue<VvpInstanceStorageOss, Map<String, dynamic>>(oss, (value) => value.toMap()),
    };
  }

  factory VvpInstanceStorage.fromMap(Map<String, dynamic> map) {
    return VvpInstanceStorage(
      oss: pulumi.Input.fromValue(VvpInstanceStorageOss.fromMap((map['oss']! as Map).cast<String, dynamic>())),
    );
  }
}

