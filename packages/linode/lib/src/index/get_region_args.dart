// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_region_get_region_args_doc}
/// Arguments for getRegion.
/// {@endtemplate}
/// {@macro pulumi_index_get_region_get_region_args_doc}
class GetRegionArgs {
  /// The code name of the region to select.
  final pulumi.Input<String> id;

  /// Creates a new [GetRegionArgs].
  /// [id] The code name of the region to select.
  GetRegionArgs({
    required String id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetRegionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionArgs(
      id: map['id'] as String,
    );
  }
}

