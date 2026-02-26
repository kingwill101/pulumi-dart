// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_object_contexts_custom/bucket_object_contexts_custom.dart';

class BucketObjectContexts {
  /// A list of custom context key-value pairs.
  final List<BucketObjectContextsCustom> customs;

  BucketObjectContexts({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customs'] =
        Input.encodeList<BucketObjectContextsCustom, Map<String, dynamic>>(
            customs, (value) => value.toMap());
    return map;
  }

  factory BucketObjectContexts.fromMap(Map<String, dynamic> map) {
    return BucketObjectContexts(
      customs: Input.decodeList<BucketObjectContextsCustom>(
          map['customs'],
          (value) => BucketObjectContextsCustom.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
