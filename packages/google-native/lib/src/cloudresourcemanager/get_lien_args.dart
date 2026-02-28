// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_get_lien_args_doc}
/// Arguments for getLien.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_get_lien_args_doc}
class GetLienArgs {
  final pulumi.Input<String> lienId;

  /// Creates a new [GetLienArgs].
  /// [lienId] Required.
  GetLienArgs({
    required String lienId,
  }) : lienId = pulumi.Input.asInput<String>(lienId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lienId'] = lienId;
    return map;
  }

  factory GetLienArgs.fromMap(Map<String, dynamic> map) {
    return GetLienArgs(
      lienId: map['lienId'] as String,
    );
  }
}
