// ignore_for_file: unused_element, unnecessary_cast


class BatchOperationsJobBucketListBucketsPrefixList {
  /// (Optional)
  final List<String>? includedObjectPrefixes;

  /// Creates a new [BatchOperationsJobBucketListBucketsPrefixList].
  /// [includedObjectPrefixes] (Optional)
  BatchOperationsJobBucketListBucketsPrefixList({
    this.includedObjectPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedObjectPrefixes': ?includedObjectPrefixes,
    };
  }

  factory BatchOperationsJobBucketListBucketsPrefixList.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBucketsPrefixList(
      includedObjectPrefixes: map['includedObjectPrefixes'] == null ? null : (map['includedObjectPrefixes'] as List).cast<String>(),
    );
  }
}

