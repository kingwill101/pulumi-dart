// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLien.
class GetLienArgs2 {
  final Input<String> lienId;

  GetLienArgs2({
    required this.lienId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lienId'] = lienId;
    return map;
  }

  factory GetLienArgs2.fromMap(Map<String, dynamic> map) {
    return GetLienArgs2(
      lienId: Input.asInput<String>(map['lienId']),
    );
  }
}
