// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_lke_versions_get_lke_versions_args_doc}
/// Arguments for getLkeVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_lke_versions_get_lke_versions_args_doc}
class GetLkeVersionsArgs {
  /// The tier (`standard` or `enterprise`) of Linode LKE Versions to fetch.
  final pulumi.Input<String>? tier;

  /// Creates a new [GetLkeVersionsArgs].
  /// [tier] The tier (`standard` or `enterprise`) of Linode LKE Versions to fetch.
  GetLkeVersionsArgs({
    String? tier,
  }) :
      tier = pulumi.Input.asOptionalInput<String>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tier': ?tier,
    };
  }

  factory GetLkeVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetLkeVersionsArgs(
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

