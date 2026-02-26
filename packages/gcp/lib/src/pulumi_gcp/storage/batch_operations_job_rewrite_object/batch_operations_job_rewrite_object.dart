// ignore_for_file: unused_element, unnecessary_cast

class BatchOperationsJobRewriteObject {
  /// valid kms key
  final String kmsKey;

  BatchOperationsJobRewriteObject({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKey'] = kmsKey;
    return map;
  }

  factory BatchOperationsJobRewriteObject.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobRewriteObject(
      kmsKey: map['kmsKey'] as String,
    );
  }
}
