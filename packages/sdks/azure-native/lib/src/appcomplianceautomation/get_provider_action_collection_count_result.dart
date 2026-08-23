// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProviderActionCollectionCount.
class GetProviderActionCollectionCountResult {
  /// The count of the specified resource.
  final int? count;

  /// Creates a new [GetProviderActionCollectionCountResult].
  /// [count] The count of the specified resource.
  const GetProviderActionCollectionCountResult({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory GetProviderActionCollectionCountResult.fromMap(Map<String, dynamic> map) {
    return GetProviderActionCollectionCountResult(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}
