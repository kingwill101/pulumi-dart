// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerSchemaChangePolicy {
  /// The deletion behavior when the crawler finds a deleted object. Valid values: `LOG`, `DELETE_FROM_DATABASE`, or `DEPRECATE_IN_DATABASE`. Defaults to `DEPRECATE_IN_DATABASE`.
  final pulumi.Input<String?>? deleteBehavior;
  /// The update behavior when the crawler finds a changed schema. Valid values: `LOG` or `UPDATE_IN_DATABASE`. Defaults to `UPDATE_IN_DATABASE`.
  final pulumi.Input<String?>? updateBehavior;

  /// Creates a new [CrawlerSchemaChangePolicy].
  /// [deleteBehavior] The deletion behavior when the crawler finds a deleted object. Valid values: `LOG`, `DELETE_FROM_DATABASE`, or `DEPRECATE_IN_DATABASE`. Defaults to `DEPRECATE_IN_DATABASE`.
  /// [updateBehavior] The update behavior when the crawler finds a changed schema. Valid values: `LOG` or `UPDATE_IN_DATABASE`. Defaults to `UPDATE_IN_DATABASE`.
  const CrawlerSchemaChangePolicy({
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
      deleteBehavior: (() { final guardedValue = map['deleteBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateBehavior: (() { final guardedValue = map['updateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
