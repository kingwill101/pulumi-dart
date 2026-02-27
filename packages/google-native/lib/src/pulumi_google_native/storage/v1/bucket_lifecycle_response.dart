// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bucket_lifecycle_rule_item_response.dart';

/// The bucket's lifecycle configuration. See lifecycle management for more information.
class BucketLifecycleResponse {
  /// A lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.
  final List<BucketLifecycleRuleItemResponse> rule;

  BucketLifecycleResponse({
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rule'] =
        Input.encodeList<BucketLifecycleRuleItemResponse, Map<String, dynamic>>(
            rule, (value) => value.toMap());
    return map;
  }

  factory BucketLifecycleResponse.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleResponse(
      rule: Input.decodeList<BucketLifecycleRuleItemResponse>(
          map['rule'],
          (value) => BucketLifecycleRuleItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
