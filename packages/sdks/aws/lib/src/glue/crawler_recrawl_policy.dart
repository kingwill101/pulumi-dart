// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerRecrawlPolicy {
  /// Specifies whether to crawl the entire dataset again, crawl only folders that were added since the last crawler run, or crawl what S3 notifies the crawler of via SQS. Valid Values are: `CRAWL_EVENT_MODE`, `CRAWL_EVERYTHING` and `CRAWL_NEW_FOLDERS_ONLY`. Default value is `CRAWL_EVERYTHING`.
  final pulumi.Input<String>? recrawlBehavior;

  /// Creates a new [CrawlerRecrawlPolicy].
  /// [recrawlBehavior] Specifies whether to crawl the entire dataset again, crawl only folders that were added since the last crawler run, or crawl what S3 notifies the crawler of via SQS. Valid Values are: `CRAWL_EVENT_MODE`, `CRAWL_EVERYTHING` and `CRAWL_NEW_FOLDERS_ONLY`. Default value is `CRAWL_EVERYTHING`.
  CrawlerRecrawlPolicy({this.recrawlBehavior});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'recrawlBehavior': ?recrawlBehavior};
  }

  factory CrawlerRecrawlPolicy.fromMap(Map<String, dynamic> map) {
    return CrawlerRecrawlPolicy(
      recrawlBehavior: (() {
        final guardedValue = map['recrawlBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
