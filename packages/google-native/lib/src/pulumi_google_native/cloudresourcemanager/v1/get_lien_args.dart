// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getLien.
class GetLienArgs {
  final Input<String> lienId;

  GetLienArgs({
    required this.lienId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lienId'] = lienId;
    return map;
  }

  factory GetLienArgs.fromMap(Map<String, dynamic> map) {
    return GetLienArgs(
      lienId: Input.asInput<String>(map['lienId']),
    );
  }
}
