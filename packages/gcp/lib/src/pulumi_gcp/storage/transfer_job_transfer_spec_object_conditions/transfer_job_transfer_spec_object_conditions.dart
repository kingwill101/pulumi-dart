// ignore_for_file: unused_element, unnecessary_cast

class TransferJobTransferSpecObjectConditions {
  /// <span pulumi-lang-nodejs="`excludePrefixes`" pulumi-lang-dotnet="`ExcludePrefixes`" pulumi-lang-go="`excludePrefixes`" pulumi-lang-python="`exclude_prefixes`" pulumi-lang-yaml="`excludePrefixes`" pulumi-lang-java="`excludePrefixes`">`exclude_prefixes`</span> must follow the requirements described for <span pulumi-lang-nodejs="`includePrefixes`" pulumi-lang-dotnet="`IncludePrefixes`" pulumi-lang-go="`includePrefixes`" pulumi-lang-python="`include_prefixes`" pulumi-lang-yaml="`includePrefixes`" pulumi-lang-java="`includePrefixes`">`include_prefixes`</span>. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final List<String>? excludePrefixes;

  /// If <span pulumi-lang-nodejs="`includePrefixes`" pulumi-lang-dotnet="`IncludePrefixes`" pulumi-lang-go="`includePrefixes`" pulumi-lang-python="`include_prefixes`" pulumi-lang-yaml="`includePrefixes`" pulumi-lang-java="`includePrefixes`">`include_prefixes`</span> is specified, objects that satisfy the object conditions must have names that start with one of the <span pulumi-lang-nodejs="`includePrefixes`" pulumi-lang-dotnet="`IncludePrefixes`" pulumi-lang-go="`includePrefixes`" pulumi-lang-python="`include_prefixes`" pulumi-lang-yaml="`includePrefixes`" pulumi-lang-java="`includePrefixes`">`include_prefixes`</span> and that do not start with any of the <span pulumi-lang-nodejs="`excludePrefixes`" pulumi-lang-dotnet="`ExcludePrefixes`" pulumi-lang-go="`excludePrefixes`" pulumi-lang-python="`exclude_prefixes`" pulumi-lang-yaml="`excludePrefixes`" pulumi-lang-java="`excludePrefixes`">`exclude_prefixes`</span>. If <span pulumi-lang-nodejs="`includePrefixes`" pulumi-lang-dotnet="`IncludePrefixes`" pulumi-lang-go="`includePrefixes`" pulumi-lang-python="`include_prefixes`" pulumi-lang-yaml="`includePrefixes`" pulumi-lang-java="`includePrefixes`">`include_prefixes`</span> is not specified, all objects except those that have names starting with one of the <span pulumi-lang-nodejs="`excludePrefixes`" pulumi-lang-dotnet="`ExcludePrefixes`" pulumi-lang-go="`excludePrefixes`" pulumi-lang-python="`exclude_prefixes`" pulumi-lang-yaml="`excludePrefixes`" pulumi-lang-java="`excludePrefixes`">`exclude_prefixes`</span> must satisfy the object conditions. See [Requirements](https://cloud.google.com/storage-transfer/docs/reference/rest/v1/TransferSpec#ObjectConditions).
  final List<String>? includePrefixes;

  /// If specified, only objects with a "last modification time" before this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? lastModifiedBefore;

  /// If specified, only objects with a "last modification time" on or after this timestamp and objects that don't have a "last modification time" are transferred. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? lastModifiedSince;

  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? maxTimeElapsedSinceLastModification;

  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? minTimeElapsedSinceLastModification;

  TransferJobTransferSpecObjectConditions({
    this.excludePrefixes,
    this.includePrefixes,
    this.lastModifiedBefore,
    this.lastModifiedSince,
    this.maxTimeElapsedSinceLastModification,
    this.minTimeElapsedSinceLastModification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludePrefixesValue = excludePrefixes;
    if (excludePrefixesValue != null) {
      map['excludePrefixes'] = excludePrefixesValue;
    }
    final includePrefixesValue = includePrefixes;
    if (includePrefixesValue != null) {
      map['includePrefixes'] = includePrefixesValue;
    }
    final lastModifiedBeforeValue = lastModifiedBefore;
    if (lastModifiedBeforeValue != null) {
      map['lastModifiedBefore'] = lastModifiedBeforeValue;
    }
    final lastModifiedSinceValue = lastModifiedSince;
    if (lastModifiedSinceValue != null) {
      map['lastModifiedSince'] = lastModifiedSinceValue;
    }
    final maxTimeElapsedSinceLastModificationValue =
        maxTimeElapsedSinceLastModification;
    if (maxTimeElapsedSinceLastModificationValue != null) {
      map['maxTimeElapsedSinceLastModification'] =
          maxTimeElapsedSinceLastModificationValue;
    }
    final minTimeElapsedSinceLastModificationValue =
        minTimeElapsedSinceLastModification;
    if (minTimeElapsedSinceLastModificationValue != null) {
      map['minTimeElapsedSinceLastModification'] =
          minTimeElapsedSinceLastModificationValue;
    }
    return map;
  }

  factory TransferJobTransferSpecObjectConditions.fromMap(
      Map<String, dynamic> map) {
    return TransferJobTransferSpecObjectConditions(
      excludePrefixes: map['excludePrefixes'] == null
          ? null
          : (map['excludePrefixes'] as List).cast<String>(),
      includePrefixes: map['includePrefixes'] == null
          ? null
          : (map['includePrefixes'] as List).cast<String>(),
      lastModifiedBefore: map['lastModifiedBefore'] == null
          ? null
          : map['lastModifiedBefore'] as String,
      lastModifiedSince: map['lastModifiedSince'] == null
          ? null
          : map['lastModifiedSince'] as String,
      maxTimeElapsedSinceLastModification:
          map['maxTimeElapsedSinceLastModification'] == null
              ? null
              : map['maxTimeElapsedSinceLastModification'] as String,
      minTimeElapsedSinceLastModification:
          map['minTimeElapsedSinceLastModification'] == null
              ? null
              : map['minTimeElapsedSinceLastModification'] as String,
    );
  }
}
