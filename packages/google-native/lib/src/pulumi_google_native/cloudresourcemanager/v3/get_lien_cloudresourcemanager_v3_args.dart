// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLien.
class GetLienCloudresourcemanagerV3Args {
  final pulumi.Input<String> lienId;

  GetLienCloudresourcemanagerV3Args({
    required this.lienId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lienId'] = lienId;
    return map;
  }

  factory GetLienCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetLienCloudresourcemanagerV3Args(
      lienId: pulumi.Input.asInput<String>(map['lienId']),
    );
  }
}
