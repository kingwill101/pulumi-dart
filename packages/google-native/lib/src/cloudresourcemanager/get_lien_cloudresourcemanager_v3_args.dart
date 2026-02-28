// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_lien_cloudresourcemanager_v3_args_doc}
/// Arguments for getLien.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_lien_cloudresourcemanager_v3_args_doc}
class GetLienCloudresourcemanagerV3Args {
  final pulumi.Input<String> lienId;

  /// Creates a new [GetLienCloudresourcemanagerV3Args].
  /// [lienId] Required.
  GetLienCloudresourcemanagerV3Args({
    required String lienId,
  }) : lienId = pulumi.Input.asInput<String>(lienId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lienId'] = lienId;
    return map;
  }

  factory GetLienCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetLienCloudresourcemanagerV3Args(
      lienId: map['lienId'] as String,
    );
  }
}
