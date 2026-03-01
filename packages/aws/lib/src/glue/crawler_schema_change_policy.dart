// ignore_for_file: unused_element, unnecessary_cast


class CrawlerSchemaChangePolicy {
  /// The deletion behavior when the crawler finds a deleted object. Valid values: `LOG`, `DELETE_FROM_DATABASE`, or `DEPRECATE_IN_DATABASE`. Defaults to `DEPRECATE_IN_DATABASE`.
  final String? deleteBehavior;
  /// The update behavior when the crawler finds a changed schema. Valid values: `LOG` or `UPDATE_IN_DATABASE`. Defaults to `UPDATE_IN_DATABASE`.
  final String? updateBehavior;

  /// Creates a new [CrawlerSchemaChangePolicy].
  /// [deleteBehavior] The deletion behavior when the crawler finds a deleted object. Valid values: `LOG`, `DELETE_FROM_DATABASE`, or `DEPRECATE_IN_DATABASE`. Defaults to `DEPRECATE_IN_DATABASE`.
  /// [updateBehavior] The update behavior when the crawler finds a changed schema. Valid values: `LOG` or `UPDATE_IN_DATABASE`. Defaults to `UPDATE_IN_DATABASE`.
  CrawlerSchemaChangePolicy({
    this.deleteBehavior,
    this.updateBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteBehavior': ?deleteBehavior,
      'updateBehavior': ?updateBehavior,
    };
  }

  factory CrawlerSchemaChangePolicy.fromMap(Map<String, dynamic> map) {
    return CrawlerSchemaChangePolicy(
      deleteBehavior: map['deleteBehavior'] == null ? null : map['deleteBehavior'] as String,
      updateBehavior: map['updateBehavior'] == null ? null : map['updateBehavior'] as String,
    );
  }
}

