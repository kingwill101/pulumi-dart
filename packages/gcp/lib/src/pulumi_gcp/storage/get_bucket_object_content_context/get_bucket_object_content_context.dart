// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_object_content_context_custom/get_bucket_object_content_context_custom.dart';

class GetBucketObjectContentContext {
  /// A list of custom context key-value pairs.
  final List<GetBucketObjectContentContextCustom> customs;

  GetBucketObjectContentContext({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customs'] = Input.encodeList<GetBucketObjectContentContextCustom,
        Map<String, dynamic>>(customs, (value) => value.toMap());
    return map;
  }

  factory GetBucketObjectContentContext.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentContext(
      customs: Input.decodeList<GetBucketObjectContentContextCustom>(
          map['customs'],
          (value) => GetBucketObjectContentContextCustom.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
