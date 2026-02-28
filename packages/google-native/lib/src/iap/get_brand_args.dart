// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_brand_args_doc}
/// Arguments for getBrand.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_brand_args_doc}
class GetBrandArgs {
  final pulumi.Input<String> brandId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBrandArgs].
  /// [brandId] Required.
  /// [project] Optional.
  GetBrandArgs({
    required String brandId,
    String? project,
  })  : brandId = pulumi.Input.asInput<String>(brandId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brandId'] = brandId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBrandArgs.fromMap(Map<String, dynamic> map) {
    return GetBrandArgs(
      brandId: map['brandId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
