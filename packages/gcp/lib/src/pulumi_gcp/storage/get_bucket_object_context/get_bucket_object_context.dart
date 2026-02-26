// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bucket_object_context_custom/get_bucket_object_context_custom.dart';

class GetBucketObjectContext {
  /// A list of custom context key-value pairs.
  final List<GetBucketObjectContextCustom> customs;

  GetBucketObjectContext({
    required this.customs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customs'] =
        Input.encodeList<GetBucketObjectContextCustom, Map<String, dynamic>>(
            customs, (value) => value.toMap());
    return map;
  }

  factory GetBucketObjectContext.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContext(
      customs: Input.decodeList<GetBucketObjectContextCustom>(
          map['customs'],
          (value) => GetBucketObjectContextCustom.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
