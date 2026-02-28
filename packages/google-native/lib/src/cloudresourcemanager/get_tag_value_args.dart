// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_tag_value_args_doc}
/// Arguments for getTagValue.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_tag_value_args_doc}
class GetTagValueArgs {
  final pulumi.Input<String> tagValueId;

  /// Creates a new [GetTagValueArgs].
  /// [tagValueId] Required.
  GetTagValueArgs({
    required String tagValueId,
  }) :
      tagValueId = pulumi.Input.asInput<String>(tagValueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagValueId': tagValueId,
    };
  }

  factory GetTagValueArgs.fromMap(Map<String, dynamic> map) {
    return GetTagValueArgs(
      tagValueId: map['tagValueId'] as String,
    );
  }
}

