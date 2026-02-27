// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLien.
class GetLienArgs {
  final pulumi.Input<String> lienId;

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
      lienId: pulumi.Input.asInput<String>(map['lienId']),
    );
  }
}
