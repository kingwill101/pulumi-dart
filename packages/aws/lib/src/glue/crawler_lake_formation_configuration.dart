// ignore_for_file: unused_element, unnecessary_cast

class CrawlerLakeFormationConfiguration {
  /// Required for cross account crawls. For same account crawls as the target data, this can omitted.
  final String? accountId;

  /// Specifies whether to use Lake Formation credentials for the crawler instead of the IAM role credentials.
  final bool? useLakeFormationCredentials;

  /// Creates a new [CrawlerLakeFormationConfiguration].
  /// [accountId] Required for cross account crawls. For same account crawls as the target data, this can omitted.
  /// [useLakeFormationCredentials] Specifies whether to use Lake Formation credentials for the crawler instead of the IAM role credentials.
  CrawlerLakeFormationConfiguration({
    this.accountId,
    this.useLakeFormationCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'useLakeFormationCredentials': ?useLakeFormationCredentials,
    };
  }

  factory CrawlerLakeFormationConfiguration.fromMap(Map<String, dynamic> map) {
    return CrawlerLakeFormationConfiguration(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      useLakeFormationCredentials: map['useLakeFormationCredentials'] == null
          ? null
          : map['useLakeFormationCredentials'] as bool,
    );
  }
}
