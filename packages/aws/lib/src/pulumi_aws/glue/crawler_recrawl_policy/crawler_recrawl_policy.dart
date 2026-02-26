// ignore_for_file: unused_element, unnecessary_cast

class CrawlerRecrawlPolicy {
  /// Specifies whether to crawl the entire dataset again, crawl only folders that were added since the last crawler run, or crawl what S3 notifies the crawler of via SQS. Valid Values are: `CRAWL_EVENT_MODE`, `CRAWL_EVERYTHING` and `CRAWL_NEW_FOLDERS_ONLY`. Default value is `CRAWL_EVERYTHING`.
  final String? recrawlBehavior;

  CrawlerRecrawlPolicy({
    this.recrawlBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recrawlBehaviorValue = recrawlBehavior;
    if (recrawlBehaviorValue != null) {
      map['recrawlBehavior'] = recrawlBehaviorValue;
    }
    return map;
  }

  factory CrawlerRecrawlPolicy.fromMap(Map<String, dynamic> map) {
    return CrawlerRecrawlPolicy(
      recrawlBehavior: map['recrawlBehavior'] == null
          ? null
          : map['recrawlBehavior'] as String,
    );
  }
}
